(defn replace-value-in-termstring
  "Replace all occurrences of `value` with `replacement`
within a `string` which is assumed to Clojure term.

Since the `string` is assumed to be a Clojure term,
this replaces the `value` only if it surrounded by spaces, parentheses,
braces or brackets (i.e., not if it is a substring of some subterm.)
One use of this is to replace a variable's name with its value,
as in `(replace-value-in-termstring 'var var string)`."
  [value replacement string]
  (clojure.string/replace
   string
   ;; The first group of this pattern matches the beginning of the string,
   ;; whitespace, or an opening parenthese/brace/bracket.
   ;; The last group matches the end of the string, whitespace, or
   ;; a closing parenthese/brace/bracket.
   (re-pattern (str "(\\A|\\s|\\[|\\{|\\()(" value ")(\\)|\\}|\\]|\\s|\\z)"))
   (str "$1" replacement "$3")))

(defn replace-values-in-termstring
  "Replace all occurrences of the eleents of `values`
with the corresponding elements of `replacements`
within a `string` which is assumed to Clojure term.

This is the multiple replacement version of `replace-value-in-termstring`.
Note that values are replaced from in order,
and if an earlier replacement adds to the termstring
a value later in the list that value will also be replaced
(but not vice versa.)

Since the `string` is assumed to be a Clojure term,
this replaces the `value` only if it surrounded by spaces, parentheses,
braces or brackets (i.e., not if it is a substring of some subterm.)
One use of this is to replace a variable's name with its value,
as in `(replace-value-in-termstring 'var var string)`."
  [values replacements string]
  ;; `values` and `replacements` are assumed to be the same length,
  ;; but we check both are non-empty.
  (if (and (seq values) (seq replacements))
    ;; Deconstruct the lists.
    (let [[v & vs] values
          [r & rs] replacements]
      (replace-values-in-termstring vs rs
                                    (replace-value-in-termstring v r string)))
    ;; If `values` or `replacements` is empty, just return the string.
    string))

(defn closing-paren-in-string
  "Given a string `s`, return an two element list consisting of
the portion of `s` up to (and including) the first closing parenthese
that does not have a matching opening parenthese, and the remainder of `s`."
  [s]
  (letfn [(nth-closing-paren-in-string [s openings]
            (cond
              ;; If `s` has less than 2 characters, then even if it is a closing paren,
              ;; it's the first one and belongs in the first list.
              (> 2 (count s)) `(~(apply str s) "")
              :else
              ;; Otherwise, decompose `s` to check its first character.
              (let [[c & cs] s]
                (cond
                  ;; If it's an opening paren, increment `openings` in the recursive call
                  ;; and prepend `c` to the returned first string.
                  (= c \() (let [[before after] (nth-closing-paren-in-string cs (+ openings 1))]
                              `(~(str c before) ~(apply str after)))
                  ;; If it's a closing paren, either split the string here if `openngs` is 0,
                  ;; or decrement `openings` in the recursive call. And prepend `c` to the first string.
                  (= c \)) (if (= openings 0)
                             `(~(str c) ~(apply str cs))
                             (let [[before after] (nth-closing-paren-in-string cs (- openings 1))]
                                `(~(str c before) ~after)))
                  ;; Otherwise, just make the recursive call and prepend `c` to the returned first string.
                  :else     (let [[before after] (nth-closing-paren-in-string cs openings)]
                              `(~(str c before) ~after))))))]
    ;; Start out with 0 opening parentheses seen.
    (nth-closing-paren-in-string s 0)))

(defn replace-call-in-termstring
  "Replace all calls to a function whose name is given by `f`
in a string representing "
  [f replacement string]
   ;; Find the first occurrence of `f` preceded by an opening parenthese.
   (let [m (re-find (re-pattern (str "(.*)\\((" f "\\s.*)")) string)]
     ;; The match m will be nil if no match was found. Otherwise,
     ;; because the pattern has two groups, it will be a vector
     ;; of the whole match, the portion before the `f` call,
     ;; and the `f` call and remainder of the string.
     ;; Note the opening parenthese is not in either group.
     (if m
       ;; Get the parts of m.
       (let [[whole before call-and-after] m
             ;; Separate `call-and-after` at the first unmatched closing parenthese.
             [callbody after] (closing-paren-in-string call-and-after)]
         (str before replacement after))
       ;; If m is null, just return the string as is.
       string)))

(defmacro unwindrec
  "Define a simple recursive function which prints out the
unwinding of the recursion as it runs.

The name of the function is given by `name`, and its arguments by `args`.

It is assumed that the function has a single base case,
guarded by condition `basecond` and with body `basebody`.
`basebody` should not contain any recursive calls;
the printing will not work properly otherwise.

It is further assumed that the function has a single recursive case,
guarded by condition `reccond` and with body `recbody`.
`recbody` should contain exactly one recursive call to `name`
somewhere in its body. The printing may not work properly otherwise.

The final, optional, argument `elsebody` is used as the body
if neither the `basecond` or `reccond` is satisfied.
"
  ([name args basecond basebody reccond recbody]
   ;; If `elsebody` is not provided, substitute `nil` instead.
   `(unwindrec ~name ~args ~basecond ~basebody ~reccond ~recbody nil))
  ([name args basecond basebody reccond recbody elsebody]
   ;; Define the function `name` taking arguments `args`.
   `(defn ~name ~args
      ;; This local function `f` actually implements `name`.
      ;; It has an additional argument, a string giving the context of
      ;; the call. This string should contain a substring "rec"
      ;; which is the point in the context at which the call was made.
      (letfn
          [(~'f [~'context ~@args]
            ;; Use the provided base case and recursive case conditions.
            (cond
              ;; In the base case, evaluate `basebody`. Substitute that value
              ;; for "rec" in the `context` and print the context,
              ;; then return the value.
              ~basecond (let [~'value ~basebody]
                          (println (replace-value-in-termstring
                                    '~'rec
                                    ~'value
                                    ~'context))
                          ~'value)
              ;; In the recursive case, replace "rec" in the `context`
              ;; with the recursive case body, and replace all argument names
              ;; with their current values.
              ~reccond  (let [~'this-context-with-call (replace-values-in-termstring
                                                        '~args
                                                        (map str ~args)
                                                        (replace-value-in-termstring
                                                         '~'rec
                                                         (str '~recbody)
                                                         ~'context))
                              ;; Also construct a new context `this-context-with-rec` to be
                              ;; passed in the recursive call by replacing
                              ;; the recursive call in `this-context-with-call` with "rec".
                              ~'this-context-with-rec (replace-call-in-termstring
                                                       '~name
                                                       "rec"
                                                       ~'this-context-with-call)]
                          (println ~'this-context-with-call)
                          ;; Now, actually make the recursive call, but first
                          ;; walk the `recbody` to replace `name` with `f` and
                          ;; the additional argument `this-context-with-rec`
                          ;; (remember that `f` is implementing `name`.)
                          (let [~'result ~(clojure.walk/prewalk-replace {name '(partial f this-context-with-rec)} recbody)
                                ~'this-context-with-result (replace-value-in-termstring '~'rec (str ~'result) ~'context)]
                            ;; Print out the context again with the result in place, unless
                            ;; the whole context is just the result (this is so
                            ;; just the result does not get printed over and over.)
                            (when (not= ~'this-context-with-result (str ~'result))
                              (println ~'this-context-with-result))
                            ~'result))
              ;; If neither `basecond` nor `reccond` was satisfied,
              ;; evaluate `elsebody`. This does no printing.
              :else ~elsebody))]

        ;; Before calling `f`, print out the originating call.
        (println (replace-values-in-termstring
                  '~args
                  (map str ~args)
                  (str "(" (clojure.string/join " " '(~name ~@args)) ")")))
        ;; Then call `f`.
        (~'f "rec" ~@args)))))
