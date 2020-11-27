# Introduction

Repository of course notes and publically available assignment/test
documents for the course “CS3mi3: Principles of Programming Languages”
at McMaster University.

The remainder of this README is an inlined copy of the course homepage,
better viewed at
<https://armkeh.github.io/principles-of-programming-languages/>

# Communication

## November

  - November 25th
    
      - Sample solutions for homework 7 (the pretty printer for
        `ULTerm`) are now posted.
    
      - The due dates for assignment 2 and homework 8 have now been
        shifted.
        
          - Assignment 2 is shifted to November 29th (Sunday) from the
            26th.
          - Homework 8 is shifted to November 26th from the 25th.
          - As mentioned in lecture, if you have completed, committed
            and pushed all or a majority of assignment 2 by tomorrow
            (the original due date), please e-mail or message Mark.
            Because you will not have benefitted from this extension, we
            will be considering a small (unspecified amount of) bonus at
            the end of the term for those in this situation.
    
      - You should now be able to fill out course evaluations at
        <https://evals.mcmaster.ca>. Please do leave feedback; I always
        read and take it into account. Specific and constructive
        comments are especially appreciated.
        
          - Note that unfortunately, as I am a sessional instructor, the
            “response rates” page will not show this course. (I am not
            certain exactly why this is the case.)
    
      - The Clojure section of this page now includes some basic
        installation instructions, taken from the “Introduction to
        Clojure” lecture (which has also been slightly expanded based on
        the Docker image setup.)
    
      - Testing is now included for homework 8. Because this is so late
        (on the scheduled due date), there will be at least a one day
        extension, to be finalised later today.

  - November 19th
    
      - Homework 8 is now posted. Its due date has been shifted to be
        Wednesday of next week.
        
        The remaining homework deadlines are also going to be shifted to
        be on Wednesdays for the remainder of the course.

  - November 15th
    
      - Some extra text and examples have been added to assignment 2
        based on some questions I've received.

  - November 10th
    
      - The testing and more detailed specifications for assignment 2
        are now posted. Sorry for the numerous delays.
          - Note that a somewhat small change was required to the Ruby
            code for the untyped calculus
            ([`a2_ulterm.rb`](./assignments/src/a2_ulterm.rb).) The
            tests need to compare *UL* terms, and so the `==` method had
            to be defined for that type.
          - The assignment itself contains an update section with any
            other important information you will need about changes.

  - November 9th
    
      - Assignment 2's due date has now been shifted to November 26th.
        Testing and more detailed instructions should be released by the
        end of day today.
    
      - There will not be a homework released for this week (i.e., the
        homework that was to be released Friday, November 6th has been
        cancelled.)
        
        The remaining homeworks will all be shifted down by 1, so
        homework 8 is released this Friday, homework 9 the following,
        and homework 10 the week after that. This does mean there are
        now 10 homeworks instead of 11.

  - November 6th
    
      - A significant error in the homework 7 tests sample output was
        reported by some of your classmates during lecture today (thank
        you Omar and Paul.) It has been corrected now.
          - The final test case, which corresponds to the nameless term
            
            ``` text
            λ λ λ (0 1) (2 3)
            ```
            
            (updated November 8th; previously there were incorrectly 4
            “λ”'s above) previously was given an example output of
            
            ``` text
            lambda a . lambda b . lambda c . ((a) (b)) ((c) (d))
            ```
            
            But notice how the first variable in the body refers to the
            outermost abstraction here, whereas the example in the
            homework specification shows (and the definition of nameless
            terms in the assignment specifies) that it should refer to
            the **innermost** abstraction. A correct sample output would
            instead be
            
            ``` text
            lambda a . lambda b . lambda c . ((c) (b)) ((a) (d))
            ```

  - November 5th
    
      - Testing code has been added to homework 7.
      - Some minor updates the the current homework and assignment have
        been posted; see the updates section for each.
          - More updates (more significant updates, such as testing) are
            to come later today.

  - November 3rd
    
      - The notes on propagating errors using the `Option` type from
        Monday's tutorial have been cleaned up, added to, and now posted
        under the tutorial notes subsection of the literate program
        section of the site.

  - November 2nd
    
      - The recordings section has been updated with new links (for the
        first time in a while 🙁.)

  - November 1st
    
      - Homework 7 has been posted.
          - This is slightly delayed from Friday; however, this homework
            is fairly light (there's just one part.)
      - I've made a first small update to assignment 2.
          - Part 4 has been made bonus, though some code I was planning
            to supply is now part of the required work for that bonus.
      - More assignment 2 updates are to come ASAP; in particular, I
        will decide upon the change to the due date and provide the
        testing.

## October

  - October 30th
    
      - The first version of assignment 2 is posted.
          - The due date is currently not set. It will be announced.

  - October 29th
    
      - The second C++ example has been added to homework 6, showing an
        approach to representing the expression language using
        subclasses.
        
        Some errors were also fixed; the “part 2” now correctly
        specifies that you should construct an `interpret` method, and
        the specified name of the file for the bonus portion was
        corrected.

  - October 28th
    
      - I am very sorry to cancel another lecture, and without any
        notice, but I am cancelling today's lecture.
          - The content of what would have been today's lecture will
            instead be covered on Friday,
              - and there will not be a live coding lecture this week.
          - I will try to have the recorded lecture promised from Friday
            out today,
          - but it will only be posted after the assignment 2 is posted
            (which will be published today.)
      - Notes from the tutorials this week have been uploaded, under the
        tutorials subsection of the literate programs section.
          - They should be cleaned up later today or tomorrow, (some
            commentary should be added to the literate portions) but
            they are provided for your convenience now.

  - October 23rd
    
      - Homework 6 has been posted.
      - Today's (live coding) lecture is cancelled, and I'll be posting
        notes and a recording to replace it sometime over the weekend.
          - I apologise; I'm just not quite up for the lecture today.
          - The content of the lecture is not required for the planned
            homework in any case, which will still be posted today.
      - Instructions for installing Ruby and the version used for the
        Docker testing (2.7.2) are now given in a “part 0” of homework
        5, and under the Ruby section of this page.

  - October 21st
    
      - The assignment's boilerplate now specifies the grading for the
        documentation portion. It is not assigned a specific grade;
        instead, 20% of each part is for documentation.

  - October 20th
    
      - An aside about variable substitution was added to the assignment
        1, as requested during lecture yesterday.

  - October 19th
    
      - A short example of using the `Option[Either[Int,Boolean]]` type,
        which is used in part 4 of the assignment, has been in the notes
        now posted at the top of the Scala section of this site.
          - See the [HTML site](./language-tidbits/scala.html) or
          - [PDF](./language-tidbits/scala.pdf).

  - October 17th
    
      - Marks for homework 1 have now been distributed to your GitLab
        repositories. See the file `marks.org`, which can be viewed with
        nice formatting on the web interface for your repo.
    
      - Homework 3 sample solutions are now posted (inside the homework
        document as usual.)

  - October 14th  
    The Prolog tests and Docker setup have been added to assignment 1.

  - October 13th
    
      - Assignment 1 has undergone a fairly major update,
        
          - adding the assignment boilerplate,
              - which includes a **new (literate) documentation file
                requirement**,
          - correcting the instructions on how to implement the types of
            parts 3 and 4 in Scala,
          - changing some type, method and predicate names to ensure a
            uniform naming standard across the assignment, and
          - adding the testing code for the Scala portions (though the
            scripts are still to come.)
    
      - **To repeat, there is now a (fairly light)** **(literate)
        documentation requirement for assignment 1\!**
        
          - See the boilerplate.
    
      - Before it is asked, at this point, I am not planning a further
        extension for assignment 1.
    
      - The testing and Docker setup for homework 5 was posted yesterday
        evening.

  - October 12th
    
      - Homework 5 is now posted. The testing is to follow later today.
      - I apologise for the relative “radio silence” since Friday. I
        have had some personal things come up over the weekend so far,
        but the updates to the assignment (mentioned in lecture) and
        then the marks for the submitted homeworks will be coming
        shortly.

  - October 7th
    
      - Homework 4 is now posted.
          - Testing and Docker setup are included immediately this time.
      - A sample solution is now in place in the homework 2 document.
      - Notes from last week's Wednesday tutorial and lecture are now
        posted; sorry for the delay.

  - October 6th  
    The notes on infinite data in Scala have been updated with the
    developments from Monday's tutorial. This content will be reviewed
    and possibly built upon in tomorrow's tutorial, and you should
    review it for the (still to come) homework 4.

  - October 2nd
    
      - Notes for today's lecture on infinite data in Scala have been
        posted under “Literate programs”.
      - Unfortunately, I'm not on track to release homework 4 this
        evening; I need to iron out some details to try and make sure
        they are right the first time.
          - It should be released tomorrow by end of day.
          - In any case, this homework is not due until the Monday after
            reading week, so there will be lots of time to work on it.

  - October 1st
    
      - Docker setup has been added for the homework 3 testing.
      - A sample solution has been added to the homework 1 document.

## September

  - September 29th  
    Some of the names in the homework 3 testing script were inconsistent
    with the homework's instructions. The scripts have been corrected
    now.
    
    Additionally,
    
      - I have removed the blank bonus task from homework 3. I can't
        think of a fitting bonus for this week 🙁.
    
      - The link to the Scala tests was broken. It is corrected now.

  - September 28th  
    Test scripts for homework 3 have been posted. The Docker setup is to
    follow shortly.

  - September 27th  
    Assignment 1 has been posted. The boilerplate and testing will come
    ASAP; I am catching up on more pressing content first, such as the
    testing for homework 3.
    
    <div class="center">
    
    **Note that the deadline date for assignment 1 has changed.** **It
    is now due October 21st, two weeks later than originally stated.**
    **This change is reflected in the outline and the Avenue course's
    schedule.**
    
    </div>

  - September 26  
    A statement on how testing and grading relate has been added to the
    homework section of this site, under the new current homework
    section.
    
    Additionally, the description of the efficiency tests for homework
    2's bonus has been updated. The number of inferences applied on my
    sample solutions is now provided, which is a better metric to
    compare to than the time those tests took on my machine (which is,
    naturally, likely going to execute code at a different speed than
    your machine.) Note: in addition to comparing your solution to my
    sample solution, the marking for the bonus will also compare your
    solution to the rest of the class. So the bonus marks assigned will
    be relative to the average performance.

  - September 25  
    Homework 3 is posted.
    
      - The bonus is still to come; I need to think of one 😀.
    
    Also, tests for the efficiency of your code in homework 2 have been
    added to the homework 2 files.

  - September 25  
    Live coding notes for today, on programming trees in Prolog, have
    been uploaded.

  - September 24  
    A new “Prolog tidbits” document has been uploaded and can be found
    under the Prolog section/tab on this site.
    
    I will aim to add information and examples to this file as I answer
    people's questions on the language and our homeworks in it, so that
    you can refer there if you have questions.

  - September 23  
    The files and instructions for using Docker to test homework 2 are
    now uploaded. The instructions and links can be found in the
    homework 2 document.

  - September 23  
    The completed version of notes 2 is now uploaded.
    
    Also,
    
      - **I've had to make one more edit to the provided code** **for
        `isDigitList`; don't include the cut in the first case**.
      - Habib's tutorial notes are now posted in the literate programs
        section of the homepage.

  - September 23  
    There has been a change to the `isDigitList` question in homework 2.
    Please review that question. (For those who may have already
    completed it, reversing the list should adapt your current solution
    to the new requirements.)
    
    Also, unit tests for checking your homework 2 have now been provided
    in the homework 2 document.
    
    Important notes regarding this testing:
    
    1.  Unlike homework 1, for homework 2 it is *mandatory* that your
        code pass these tests.
    2.  There is no interface file that you need to complete. You still
        only need submit your `h2.pl` file.
    3.  Passing these tests does not guarantee a particular grade. What
        has been provided is intended to act as a *sanity check*, and
        more thorough tests may be used in the grading process.
    
    Instructions and files for using Docker to run the tests will be
    provided later today.

  - September 22  
    More recording links have been added to the list. Also,
    
      - The homework boilerplate has been updated to indicate that use
        of the standard higher-order operators is always allowed.
      - Instructions for testing homework 1 using Docker are now
        uploaded (obviously too late to be useful, but added for
        completion's sake.) Similar setup and instructions will be added
        for homework 2 shortly.
      - A poor choice of wording regarding `isDigitList` has been
        changed in homework 2; “the first digit of `X` ⇒ the “ones”
        digit of \~X\~”.

  - September 18  
    Homework 2 has been posted.

  - September 18  
    The notes from the live coding lecture have been properly placed in
    that section.
    
    They will be updated ASAP to include relevant code for the upcoming
    homework.

  - September 18  
    Testing code has been uploaded for homework 1, in the homework file
    itself. **For this homework, it is optional that you complete the**
    **testing interface and submit it with your homework**. For future
    homeworks and assignments, tests will be provided in a more timely
    manner and required.
    
    Also note, the requirement to name both instances of your `flatten`
    and `orderedElems` function the same has been dropped.

  - September 17  
    A note has been added to the course outline regarding use of
    **plaintext** or **code snippet markup** when sharing code in
    discussions with staff and on Teams, **instead of screenshots**.
    Also see the post in the general chat on Teams regarding how to use
    the code snippet formatting tool.
    
    Additionally:
    
      - A note was added to homework 1 regarding the marking of the
        `orderedElems` question. And a small error regarding usage of
        two type parameters was fixed in the `StructTree` problem.

  - September 16  
    The typos encountered in today's lecture have all been corrected (if
    I missed any, let me know.)
    
      - The first parse tree example has been corrected, and I've also
        massaged the definition of parse tree's a bit so that we don't
        need to draw the “pointless nodes” I mentioned. The first
        example shows what we omit.
    
    Also note, especially for those in the Monday tutorial, the live
    coding notes on Scala have been updated.
    
      - A motivation section has been added which should better describe
        why we are coding the way we are in Scala.
      - One further update will be coming with some changes that came up
        during today's tutorial.

  - September 15  
    Each student of this course should now have a (private) GitLab
    repository, at the address
    <https://gitlab.cas.mcmaster.ca/cs3mi3-2020-student-repos/macid>
    where `macid` is your McMaster ID.
    
    There were some initial issues with the `master` branch being
    protected, so you could not `push` to it; those should be resolved
    now.
    
    Please `commit` and `push` to your repo ASAP, even if it's just some
    placeholder files, to confirm everything is working.
    
    Please *do* use the `master` branch for submitting homework. There
    is no need to create other branches for this course, though you are
    free to do so if you want to.
    
    If you seem unable to log in to the CAS GitLab, please try to follow
    the instructions to reset your CAS password that are located to the
    left of the login form.

  - September 15  
    A recordings section has been added to this website with links to
    the recordings of lectures and tutorials on Streams (which I hope
    work for everyone, and not just me).

  - September 14  
    The (still a bit incomplete) live coding notes from lecture and
    tutorial today have been posted. Note the new section along the top
    for these notes. They'll be cleaned up after Wednesday's tutorial.

  - September 14  
    To address some questions which have come up in lectures and
    tutorials so far:
    
      - “Are we going to alternate between different programming
        languages or will we stick to Scala for a while?”
          - A good question, and something I meant to discuss but never
            got to.
            
            The rough timeline for introducing languages is intended to
            be
            
              - September 14th: introduce Scala (today)
              - September 18th: introduce Prolog (Friday)
              - October 7th: introduce Ruby
              - November 6th: introduce Clojure
            
            Assignment 1 will use Scala and Prolog, assignment 2 will
            use Scala and Ruby, and assignment 3 will use Prolog and
            Clojure. Homeworks may alternate sometimes, but I intend to
            focus on the languages which are being used for the current
            assignment in each homework.
            
            This is a much faster pace for picking up a language than
            previous courses, but we are usually focusing on a
            relatively small number of ideas in each language.
            
            Leverage what you know from previous courses, ask lots of
            questions (please\!), and when in doubt, look closely at
            provided examples.
      - “Can we use IntelliJ for Scala?”, “Do we have to use Ammonite?”,
        etc.
          - You can use whatever tools you wish to for writing your code
            and interacting with Scala. On our end, we will be using
            Ammonite, but there should not be conflicts, and I intend to
            release a Docker image you can use to test for conflicts
            later this week.
      - “Do we have to use Docker?”
          - Not explicitely, though it's *strongly* encouraged. Docker
            images will be provided so you can ensure your code works on
            the system it will be marked on. It is unlikely we will
            encounter conflicts in any case, but it is better to be
            certain by using the Docker images.
      - “Will live coding lecture and tutorial notes be posted?”
          - Yes, they will be posted, and should be available in the
            usual set of formats.
    
    Also,
    
      - Note that homework 1 was updated over the weekend with
        submission guidelines and a homework code of conduct related to
        collaboration. Please review it.

  - September 11  
    Homework 1 has been uploaded and can be found under the homework
    section.
    
      - I am aware of the issues with the images in the PDF version;
        they will be fixed shortly.
    
    Also of note:
    
      - The Monday lecture will be a live coding session introducing
        some basic Scala concepts.
      - The tutorials will be running next week, and will be used to
        discuss Scala further.

  - September 11  
    Reminder that the first lecture is today, at 1:30pm. It will be in
    the lectures and tutorials channel in Microsoft Teams.

  - September 11  
    The first section of notes, [1 – Introduction and
    overview](#1%20–%20Introduction%20and%20overview), is now complete
    and uploaded.

  - September 9  
    The Microsoft Teams team for the course has been activated. Please
    ensure you have access, and contact me ASAP if you do not.

  - September 7  
    I have decided to cancel the Wednesday lecture for this week, in
    support of [Scholar Strike Canada](https://scholarstrikecanada.ca/)
    and their mission “to protest anti-Black, racist and colonial police
    brutality in the U.S., Canada and elsewhere.” I encourage everyone
    to spend the lecture time and any other time you have that day on
    the public digital teach-ins they are offering.
    
    The scholar strike is planned for September 9<sup>th</sup> and
    10<sup>th</sup>. Note that the Friday lecture on the 11<sup>th</sup>
    will still take place as scheduled. Note also that there are no
    tutorials scheduled this week.

  - September 6  
    As of this point, I am waiting on UTS to allow me access to the
    course Microsoft Teams team. If this is not done by Wednesday, we
    will be using Zoom for lectures until I am able to activate the
    team.

  - September 6  
    The course outline is in near complete state; I am still waiting for
    confirmation of the teaching assistants.
    
      - In particular, please review the information on grading; we will
        not be having midterm or final exams for this course.

## August

  - August 3  
    Incomplete course outline added to homepage.

# Notes

## Lecture slides

The slides are available as

  - Online `reveal.js` 2-dimensional slideshows,
  - printable PDFs, or
  - text-editor friendly plaintext Org files.

### 1 – Introduction and overview

  - [Online slides](./notes/1--Introduction-and-overview.html)
  - [PDF](./notes/1--Introduction-and-overview.pdf)
  - [Org plaintext](./notes/1--Introduction-and-overview.org)

### 2 – Formal languages

  - [Online slides](./notes/2--Formal-languages.html)
  - [PDF](./notes/2--Formal-languages.pdf)
  - [Org plaintext](./notes/2--Formal-languages.org)

### 3 – An untyped λ-calculus, *UL*

  - [Online slides](./notes/3--An-untyped-lambda-calculus-UL.html)
  - [PDF](./notes/3--An-untyped-lambda-calculus-UL.pdf)
  - [Org plaintext](./notes/3--An-untyped-lambda-calculus-UL.org)

### 4 – Bindings and scope

  - [Online slides](./notes/4--Bindings-and-scope.html)
  - [PDF](./notes/4--Bindings-and-scope.pdf)
  - [Org plaintext](./notes/4--Bindings-and-scope.org)

### 5 – Types

  - [Online slides](./notes/5--Types.html)
  - [PDF](./notes/5--Types.pdf)
  - [Org plaintext](./notes/5--Types.org)

### 6 – A typed λ-calculus, *TL*

  - [Online slides](./notes/6--A-typed-lambda-calculus-TL.html)
  - [PDF](./notes/6--A-typed-lambda-calculus-TL.pdf)
  - [Org plaintext](./notes/6--A-typed-lambda-calculus-TL.org)

### 7 – Imperativeness

  - [Online slides](./notes/7--Imperativeness.html)
  - [PDF](./notes/7--Imperativeness.pdf)
  - [Org plaintext](./notes/7--Imperativeness.org)

### 8 – An imperative core, *WHILE*

  - [Online slides](./notes/8--An-imperative-core-While.html)
  - [PDF](./notes/8--An-imperative-core-While.pdf)
  - [Org plaintext](./notes/8--An-imperative-core-While.org)

### Appendix 1 – Notation and conventions

  - [Webpage](./notes/A1--Notation-and-conventions.html)
  - [PDF](./notes/A1--Notation-and-conventions.pdf)
  - [Org plaintext](./notes/A1--Notation-and-conventions.org)

### Appendix 2 – Software and tools

  - [Webpage](./notes/A2--Software-and-tools.pdf)
  - [PDF](./notes/A2--Software-and-tools.pdf)
  - [Org plaintext](./notes/A2--Software-and-tools.org)

### Appendix 3 – External resources

  - [Webpage](./notes/A3--External-resources.pdf)
  - [PDF](./notes/A3--External-resources.pdf)
  - [Org plaintext](./notes/A3--External-resources.org)

## Lecture hand-written notes

In some cases, some handwritten notes accompany the slides during
lecture. This term, those notes will be written on paper that can be
seen during the online lecture.

When necessary and possible, those notes are scanned and made available
here. If any are missing that you would like to see, please ask.

  - [September 30th – currying](./notes/handwritten/sept30-currying.pdf)
  - [September 23rd – Ambiguity in parse
    trees](./notes/handwritten/sept23-trees.pdf)

# Literate programs

The last lecture of each week is usually a hands-on live programming
session. Sometimes the same document is used for tutorials the following
week.

Literate copies of the programs developed in those lectures and
tutorials are available here. Particularly relevant portions of raw code
are also included.

## Lectures

### November 27th – Introductory concurrency

  - [HTML](./notes/live-coding/11-27-Introductory-concurrency.html)
  - [PDF](./notes/live-coding/11-27-Introductory-concurrency.pdf)
  - [Org
    plaintext](./notes/live-coding/11-27-Introductory-concurrency.org)

### November 20th – Introductory metaprogramming

  - [HTML](./notes/live-coding/11-20-Introductory-metaprogramming.html)
  - [PDF](./notes/live-coding/11-20-Introductory-metaprogramming.pdf)
  - [Org
    plaintext](./notes/live-coding/11-20-Introductory-metaprogramming.org)

### November 6th – Introduction to Clojure

  - [HTML](./notes/live-coding/11-06-Introduction-to-Clojure.html)
  - [PDF](./notes/live-coding/11-06-Introduction-to-Clojure.pdf)
  - [Org
    plaintext](./notes/live-coding/11-06-Introduction-to-Clojure.org)

### October 9th – Introduction to Ruby

  - [HTML](./notes/live-coding/10-09-Introduction-to-Ruby.html)
  - [PDF](./notes/live-coding/10-09-Introduction-to-Ruby.pdf)
  - [Org plaintext](./notes/live-coding/10-09-Introduction-to-Ruby.org)

### October 2nd – Infinite data in Scala

  - [HTML](./notes/live-coding/10-02-infinite-data-in-Scala.html)
  - [PDF](./notes/live-coding/10-02-infinite-data-in-Scala.pdf)
  - [Org
    plaintext](./notes/live-coding/10-02-infinite-data-in-Scala.org)

Relevant raw code:

:TODO:

### September 25th – Trees in Prolog

  - [HTML](./notes/live-coding/09-25-Trees-in-Prolog.html)
  - [PDF](./notes/live-coding/09-25-Trees-in-Prolog.pdf)
  - [Org plaintext](./notes/live-coding/09-25-Trees-in-Prolog.org)

Relevant raw code:

  - [The `is_Tree` predicates](./notes/live-coding/src/tree.pl) and some
    operations on trees.

### September 18th – Puzzles in Prolog

  - [HTML](./notes/live-coding/09-18-Introduction-to-Prolog.html)
  - [PDF](./notes/live-coding/09-18-Introduction-to-Prolog.pdf)
  - [Org
    plaintext](./notes/live-coding/09-18-Introduction-to-Prolog.org)

Relevant raw code:

:TODO:

### September 14th – The Boom hierarchy in Scala

  - [HTML](./notes/live-coding/09-14-Boom-hierarchy-in-Scala.html)
  - [PDF](./notes/live-coding/09-14-Boom-hierarchy-in-Scala.pdf)
  - [Org
    plaintext](./notes/live-coding/09-14-Boom-hierarchy-in-Scala.org)

Relevant raw code:

  - [The `ConsList` type](./notes/live-coding/src/ConsList.sc) and some
    operations on it.

## Tutorials

Files from the Wednesday tutorial, led by Habib, are collected here. In
most cases, the material is largely similar to the material from the
lecture notes.

### Monday November 16th – Tail recursion in Clojure

  - [HTML](./notes/tutorial/11-16-Tail-recursion-in-Clojure.html)
  - [PDF](./notes/tutorial/11-16-Tail-recursion-in-Clojure.pdf)
  - [Org
    plaintext](./notes/tutorial/11-16-Tail-recursion-in-Clojure.org)

### Monday November 2nd – Propagating failure with the Option type

  - [HTML](./notes/tutorial/11-02-Propagating-failure-with-the-Option-type.html)
  - [PDF](./notes/tutorial/11-02-Propagating-failure-with-the-Option-type.pdf)
  - [Org
    plaintext](./notes/tutorial/11-02-Propagating-failure-with-the-Option-type.org)

### Monday October 26th & Wednesday October 28th – Trees in Ruby

  - [HTML](./notes/tutorial/10-26-Trees-in-Ruby.html)
  - [PDF](./notes/tutorial/10-26-Trees-in-Ruby.pdf)
  - [Org plaintext](./notes/tutorial/10-26-Trees-in-Ruby.org)

### Wednesday October 21st –

:TODO:

### Wednesday October 7th –

:TODO:

### Wednesday September 30th – Trees in Prolog

  - [Prettified Jupyter notebook on
    GitHub](https://github.com/armkeh/principles-of-programming-languages/blob/master/notes/tutorial/Constructing%20a%20Tree%20Using%20the%20Prolog.ipynb)
  - [Jupyter notebook
    source](./notes/tutorial/Constructing%20a%20Tree%20using%20the%20Prolog.ipynb)
  - [PDF](./notes/tutorial/Constructing%20a%20Tree%20using%20the%20Prolog.pdf)

### Wednesday September 23rd – Docker and Prolog

  - [Prettified Jupyter notebook on
    GitHub](https://github.com/armkeh/principles-of-programming-languages/blob/master/notes/tutorial/Introduction%20to%20Docker%20and%20Prolog.ipynb)
  - [Jupyter notebook
    source](./notes/tutorial/Introduction%20to%20Docker%20and%20Prolog.ipynb)
  - [PDF](./notes/tutorial/Introduction%20to%20Docker%20and%20Prolog.pdf)

# Recordings

Lecture and tutorial recordings are available on Microsoft Stream. As
long as you are registered in the course, the full list should be
available
[here](https://web.microsoftstream.com/group/16cec1b5-2ab3-4af9-9120-2ea9091b20c5?view=videos).

Links directly to specific lectures/tutorials are also included below,
but this may not be updated quickly after lectures/tutorials.

## Note lectures

These lectures cover material from the [Notes](#Notes) section of the
website, and usually take place on Mondays and Wednesdays.

  - [November 2nd (Monday) – Types
    (part 2)](https://web.microsoftstream.com/video/5d454b17-ce30-42e3-b775-f5b2216cf451)
  - [October 30th (Friday) – Some λ-calculus
    topics](https://web.microsoftstream.com/video/efa0e5bf-3a86-43dc-bf61-1e26ea8fefb2)
  - [October 26th (Monday) – Bindings and Scopes (part 3),
    Types](https://web.microsoftstream.com/video/8dbb8f80-3317-46be-91b0-28333c94effa)
  - [October 21st (Wednesday) – Bindings and scope
    (part 2)](https://web.microsoftstream.com/video/89249645-df76-4960-ae1f-46dfb1d2539b)
  - [October 19th (Monday) – Bindings and
    scope](https://web.microsoftstream.com/video/4ac95e0c-37b9-4d93-af02-d828e72983fc)
  - [October 7th (Wednesday) – And untyped λ-calculus, *UL* (part
    3)](https://web.microsoftstream.com/video/521fe4e3-e3b5-40a0-b59a-3237136887e7)
  - [October 5th (Monday) – And untyped λ-calculus, *UL* (part
    2)](https://web.microsoftstream.com/video/0c33b318-f644-49a9-905e-676594e9d5da)
  - [September 30th (Wednesday) – An untyped λ-calculus,
    *UL*](https://web.microsoftstream.com/video/7c37e57d-4c10-4cae-914d-89b4e2e58a92)
  - [September 28th (Monday) – Formal languages
    (part 4)](https://web.microsoftstream.com/video/bed4dad7-dc7f-4721-8795-3c4d6d956a37)
      - (also the beginning of “An untyped λ-calculus, /UL/”)
  - [September 23rd (Wednesday) – Formal language
    (part 3)](https://web.microsoftstream.com/video/56841a6d-5ae0-4378-8c0d-ed7cce18a614)
  - [September 21st (Monday) – Formal languages
    (part 2)](https://web.microsoftstream.com/video/d7d61b56-b593-4c48-8890-b03e9ff71015)
  - [September 16th (Wednesday) – Formal languages
    (part 1)](https://web.microsoftstream.com/video/6aa707fa-3e68-4b61-8f6c-ed60e62f3b14)
  - [September 14th (Monday) – The Boom hierarchy in
    Scala](https://web.microsoftstream.com/video/fe0b46f8-2512-4084-a399-f9d1b33257b6)
      - (also the end of “Introduction and Overview” notes)
  - [September 11th (Friday) – Introduction and
    Overview](https://web.microsoftstream.com/video/af55c09e-00dc-4d7c-a048-166907b6abd7)

## Live coding lectures

These lectures cover supplementary materials, found in the [Literate
programs](#Literate%20programs) section of the website. Usually this
material lays the groundwork for the weeks homework. These lectures
usually take place on Fridays.

  - [October 9th (Friday) – Introduction to
    Ruby](https://web.microsoftstream.com/video/65c0ab12-344e-4bca-8b16-dc469b6e2339)
  - [October 2nd (Friday) – Infinite data in
    Scala](https://web.microsoftstream.com/video/0a516345-0f40-40f3-a309-6bf9a3046188)
  - [September 25th (Friday) – Trees in
    Prolog](https://web.microsoftstream.com/video/6201a5a8-3757-4dc4-bb98-ff49628f4639)
  - [September 18th (Friday) – Logical games in
    Prolog](https://web.microsoftstream.com/video/f29fc2dd-f3c0-40f6-9e67-a81eeb273065)
  - [September 14th (Monday) – The Boom hierarchy in
    Scala](https://web.microsoftstream.com/video/fe0b46f8-2512-4084-a399-f9d1b33257b6)

## Tutorials

The contents of each week's tutorials is usually consistent across the
two tutorials. We will put a note here in the case that there is a
significant difference between Monday and Wednesday.

  - [Week 7 Monday, November 2nd – Propagating failure with the Option
    type](https://web.microsoftstream.com/video/4040de86-4326-4543-9b7e-893f980cb0b4)
  - [Week 6 Wednesday, October 28th – Trees in
    Ruby](https://web.microsoftstream.com/video/204cb8c0-196f-4982-864e-882b91629e2a)
    (Mark)
  - [Week 6 Monday, October 26th – Trees in
    Ruby](https://web.microsoftstream.com/video/03995825-e0dd-42bc-81b4-cc3e41f9a741)
    (Mark)
  - Week 5 Wednesday, October 21st – Introduction to Ruby
      - Unfortunately not recorded.
  - [Week 5 Monday, October 19th – Introduction to
    Ruby](https://web.microsoftstream.com/video/9df1e93a-629c-4e8e-95c4-1326cc81e555)
    (Mark)
  - [Week 4 Wednesday, October 7th – More infinite data in
    Scala](https://web.microsoftstream.com/video/63bf6efc-7f16-4a0e-86ea-68778fc1e0ea)
    (Habib)
  - [Week 4 Monday, October 5th – More infinite data in
    Scala](https://web.microsoftstream.com/video/a44b3b3c-b61d-499f-b6c0-041613e13ccb)
    (Mark)
  - [Week 3 Wednesday, September 30th – More trees in
    Prolog](https://web.microsoftstream.com/video/bb9938cd-ffec-43e6-b9d4-3a1e93b1ce2a)
    (Habib)
  - [Week 3 Monday, September 28th – More trees in
    Prolog](https://web.microsoftstream.com/video/7a37a812-9955-4edd-a08f-bd0d95ce4c25)
    (Mark)
  - [Week 2 Wednesday, September 23rd – Docker, Introduction to
    Prolog](https://web.microsoftstream.com/video/8f852c44-7249-42ca-9fc0-acc21578ecd5)
    (Habib)
      - Covers Docker, which the Monday tutorial did not.
  - [Week 2 Monday, September 21st – Introduction to
    Prolog](https://web.microsoftstream.com/video/dd31d267-6de5-4cc1-afae-8e81b126d3f8)
    (Mark)
      - Discusses Prolog with a little more depth than the Wednesday
        tutorial.
  - [Week 2 Wednesday, September 16th – Algebraic data in
    Scala](https://web.microsoftstream.com/video/da69ad32-13c9-4e26-904e-e06a66c3b537)
    (Mark)
  - [Week 2 Monday, September 14th – Algebraic data in
    Scala](https://web.microsoftstream.com/video/1f99aa1e-ee5e-4bb4-a27c-6c32175332fd)
    (Mark)

# Homework

## Current homeworks

### Homework 8 – Visualing the call stack in Clojure – Nov 19th to Nov 26th

**As of November 25th, the due date for this homework was shifted to
November 26th** from November 25th. The testing setup is also released.

  - [HTML](./homework/h8.html)
  - [PDF](./homework/h8.pdf)
  - [Org plaintext](./homework/h8.org)

## Homework testing policy

As of homework 2, automated unit tests are provided. A Docker image is
also provided, in order to ensure that you are able to run the tests in
the same environment that we will run them in.

Passing the provided tests is *mandatory*. And unless other issues are
found, passing the tests should imply you will receive a passing grade
on the homework.

  - But no particular grade is guaranteed.

The automated testing we run during marking will typically include some
number of additional tests, usually chosen to test “edge cases”. You are
encouraged to try and think of these cases yourselves, and add
appropriate tests to the provided ones in order to better check your
solutions. This is not required though; a uniform set of tests will be
used for every student's
submission.

## Previous homeworks

### Homework 7 – Pretty printing a representation of the untyped λ-calculus – Nov 1st to Nov 8th

  - [HTML](./homework/h7.html)
  - [PDF](./homework/h7.pdf)
  - [Org
plaintext](./homework/h7.org)

### Homework 6 – Representing and interpreting `Expr` in Ruby – Oct 23rd to Nov 1st

  - [HTML](./homework/h6.html)
  - [PDF](./homework/h6.pdf)
  - [Org plaintext](./homework/h6.org)

### Homework 5 – “Fizzbuzz”-ing in Ruby – Oct 12th to Oct 25th

Note the due date: the Sunday following reading week.

  - [HTML](./homework/h5.html)
  - [PDF](./homework/h5.pdf)
  - [Org
plaintext](./homework/h5.org)

### Homework 4 – Working with lazy (potentially infinite) lists in Scala – Oct 7th to Oct 19th

  - [HTML](./homework/h4.html)
  - [PDF](./homework/h4.pdf)
  - [Org
plaintext](./homework/h4.org)

### Homework 3 – Revisiting homework 1 in Prolog and homework 2 in Scala – Sept 25th to Oct 4th

  - [HTML](./homework/h3.html)
  - [PDF](./homework/h3.pdf)
  - [Org plaintext](./homework/h3.org)

### Homework 2 – Solving problems in Prolog – Sept 18th to Sept 27th

  - [HTML](./homework/h2.html)
  - [PDF](./homework/h2.pdf)
  - [Org plaintext](./homework/h2.org)

### Homework 1 – Implementing Trees in Scala – Sept 11th to Sept 20th

  - [HTML](./homework/h1.html)
  - [PDF](./homework/h1.pdf)
  - [Org plaintext](./homework/h1.org)

# Assignments

## Assignment 2 – Typing a λ-calculus – Oct 30th to Nov 29th

**As of November 25th, the due date has been shifted to November 29th**,
from November 26th. If you have completed the assignment by November
26th, please e-mail or message Mark to inform him, and commit/push your
work, for a possible (unspecified) bonus consideration in your final
mark.

  - [HTML](./assignments/a2.html)
  - [PDF](./assignments/a2.pdf)
  - [Org
plaintext](./assignments/a2.org)

## Assignment 1 – Interpreting simple integer expressions – Sept 26th to Oct 21st

  - [HTML](./assignments/a1.html)
  - [PDF](./assignments/a1.pdf)
  - [Org plaintext](./assignments/a1.org)

## Assignment testing policy

Automated unit tests will be provided for all assignments. A Docker
image is also provided, in order to ensure that you are able to run the
tests in the same environment that we will run them in.

Passing the provided tests is *mandatory*. But unlike the homeworks,
passing the provided tests does **not** necessarily mean you will
receive a passing grade on the assignment. The assignment grades are
more heavily influenced by a code inspection.

As with the homework, the automated testing we run during marking will
typically include some number of additional tests, usually chosen to
test “edge cases”. You are encouraged to try and think of these cases
yourselves, and add appropriate tests to the provided ones in order to
better check your solutions. This is not required though; a uniform set
of tests will be used for every student's submission.

# Course outline

The course outline is available as

  - a printer friendly [PDF](./notes/0--Course-outline.pdf),
  - a screen friendly [webpage](./notes/0--Course-outline.html), or
  - a text-editor friendly [Org](./notes/0--Course-outline.org) file.

The webpage is also embedded here for convenience.

# Scala

Answers to some common or interesting questions regarding Prolog can be
found in the Prolog tidbits file, available as

  - an [HTML site](./language-tidbits/scala.html),
  - a [PDF](./language-tidbits/scala.pdf), or
  - a plaintext [Org document](./language-tidbits/scala.org).

## Installation instructions

In this course, we will be targetting

  - [Scala](https://scala-lang.org) version 2.13 and
  - [Ammonite](https://ammonite.io), an “improved” Scala REPL (read,
    evaluate, print loop), version 1.7.1,

as used in the
[lolhens/ammonite](https://hub.docker.com/r/lolhens/ammonite/) Docker
image.

<div class="center">

**If there is any update to the Docker image,** **or if for any other
reason we change our targeted versions**, **we will make an announcement
on the homepage.**

</div>

All of that said, any recent version of Scala and Ammonite should
suffice for our purposes; it is unlikely we will be using any features
which could have compatability issues. You may install whatever is most
convenient on your system, and later run tests in the Docker image to
verify there are no compatability issues.

So, we recommend whatever installation method that seems appropriate for
your operating system, and we link to guides to get you started below.

### Installation guides

  - The [Ammonite](https://ammonite.io) homepage.
  - [Chapter 2](https://www.handsonscala.com/chapter-2-setting-up.html)
    of the online “Hands-on Scala”, titled “Setting Up”.
      - “[Hands-on Scala](https://www.handsonscala.com/index.html)”, by
        Li Haoyi, is a very recent book on Scala using Ammonite. Its
        first 5 chapters are free to read online.

# Prolog

Answers to some common or interesting questions regarding Prolog can be
found in the Prolog tidbits file, available as

  - an [HTML site](./language-tidbits/prolog.html),
  - a [PDF](./language-tidbits/prolog.pdf), or
  - a plaintext [Org document](./language-tidbits/prolog.org).

## Installation instructions

In this course, we will be targetting [SWI
Prolog](https://www.swi-prolog.org/) version 8.2.0, as used in the
[swipl](https://hub.docker.com/_/swipl/) Docker image.

<div class="center">

**If there is any update to the Docker image,** **or if for any other
reason we change our targeted versions**, **we will make an announcement
on the homepage.**

</div>

That said, any recent version should suffice.

### Installation guides

  - Linux and MacOS users should be able to install SWI Prolog via their
    package manager.
  - The [SWI Prolog website](https://www.swi-prolog.org/download/stable)
    provides downloads of prebuilt binaries for SWI Prolog 8.2.1.

# Ruby

## Installation instructions

If you are on a Unix based system (including the Windows Subsystem for
Linux) you most likely already have Ruby installed on your system. Try
`ruby -v` from your terminal of choice to confirm.

Otherwise, or if you want a different version, see the [Ruby
installation
guide](https://www.ruby-lang.org/en/documentation/installation/#rubyinstaller).

The Docker images used for testing will be using Ruby version 2.7.2, but
as usual, (small) differences in the version of Ruby you use should not
matter for this course.

You can get started with an interpreter session by running `irb` from
your favourite terminal, or writing your code in a `.rb` file and
running it with, for instance, `ruby h5.rb`. (You can also use `irb` to
run your code; this will echo each line of your file as it is run, which
you may find helpful for debugging purposes.)

# Clojure

## Installation instructions

For a quick start with Clojure, you can use
[repl.it](https://repl.it/languages/clojure).

For instructions on installing Clojure, see the Clojure [getting started
guide](https://clojure.org/guides/getting_started).

For the purposes of testing in Docker, we will use the build tool
[Leiningen](https://leiningen.org/).

That said, we do not assume that a “project” is created for the
homeworks and assignments. As with Scala, we will assume that your
Clojure code is a *script*, to be run in the REPL.

Specifically, we will run your code by starting a REPL with `lein repl`,
and then “dumping” your code into that REPL.

If you want to check how your code runs with `lein repl` on your own
system, you can run `cat my-code-file.clj | lein repl`. This is the
command the Docker image will use.
