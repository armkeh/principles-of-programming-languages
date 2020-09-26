# Introduction

Repository of course notes and publically available assignment/test
documents for the course “CS3mi3: Principles of Programming Languages”
at McMaster University.

The remainder of this README is an inlined copy of the course homepage,
better viewed at
<https://armkeh.github.io/principles-of-programming-languages/>

# Communication

## September

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

  - [September 23rd – ambiguity in parse
    trees](./notes/handwritten/sept23-trees.pdf)

# Literate programs

The last lecture of each week is usually a hands-on live programming
session. Sometimes the same document is used for tutorials the following
week.

Literate copies of the programs developed in those lectures and
tutorials are available here. Particularly relevant portions of raw code
are also included.

## Lectures

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

Files are only added here if they differ from the previous week's live
coding lecture. In many cases, the content will be shared.

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

  - [September 21st (Monday) – Formal languages
    (part 2)](https://web.microsoftstream.com/video/d7d61b56-b593-4c48-8890-b03e9ff71015)
  - [September 16th (Wednesday) – Formal languages
    (part 1)](https://web.microsoftstream.com/video/6aa707fa-3e68-4b61-8f6c-ed60e62f3b14)
  - [September 14th (Monday) – The Boom hierarchy in
    Scala](https://web.microsoftstream.com/video/fe0b46f8-2512-4084-a399-f9d1b33257b6)
    (end of Introduction and Overview notes)
  - [September 11th (Friday) – Introduction and
    Overview](https://web.microsoftstream.com/video/af55c09e-00dc-4d7c-a048-166907b6abd7)

## Live coding lectures

  - [September 18th (Friday) – Logical games in
    Prolog](https://web.microsoftstream.com/video/f29fc2dd-f3c0-40f6-9e67-a81eeb273065)
  - [September 14th (Monday) – The Boom hierarchy in
    Scala](https://web.microsoftstream.com/video/fe0b46f8-2512-4084-a399-f9d1b33257b6)

## Tutorials

  - [Week 2 Wednesday, September 23rd – Docker, Introduction to
    Prolog](https://web.microsoftstream.com/video/8f852c44-7249-42ca-9fc0-acc21578ecd5)
  - [Week 2 Monday, September 21st – Introduction to
    Prolog](https://web.microsoftstream.com/video/dd31d267-6de5-4cc1-afae-8e81b126d3f8)
  - [Week 2 Wednesday, September 16th – Algebraic data in
    Scala](https://web.microsoftstream.com/video/da69ad32-13c9-4e26-904e-e06a66c3b537)
  - [Week 2 Monday, September 14th – Algebraic data in
    Scala](https://web.microsoftstream.com/video/1f99aa1e-ee5e-4bb4-a27c-6c32175332fd)

# Homework

## Homework 3 – Revisiting homework 1 in Prolog and homework 2 in Scala – Sept 25th to Oct 4th

  - [HTML](./homework/h3.html)
  - [PDF](./homework/h3.pdf)
  - [Org plaintext](./homework/h3.org)

## Homework 2 – Solving problems in Prolog – Sept 18th to Sept 27th

  - [HTML](./homework/h2.html)
  - [PDF](./homework/h2.pdf)
  - [Org plaintext](./homework/h2.org)

## Homework 1 – Implementing Trees in Scala – Sept 11th to Sept 20th

  - [HTML](./homework/h1.html)
  - [PDF](./homework/h1.pdf)
  - [Org plaintext](./homework/h1.org)

# Assignments

:TODO:

# Course outline

The course outline is available as

  - a printer friendly [PDF](./notes/0--Course-outline.pdf),
  - a screen friendly [webpage](./notes/0--Course-outline.html), or
  - a text-editor friendly [Org](./notes/0--Course-outline.org) file.

The PDF is also embedded here for convenience.

# Scala

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

:TODO:

# Clojure

:TODO:
