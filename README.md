# Introduction

Repository of course notes and publically available assignment/test
documents for the course “CS3mi3: Principles of Programming Languages”
at McMaster University.

The remainder of this README is an inlined copy of the course homepage,
better viewed at
<https://armkeh.github.io/principles-of-programming-languages/>

# Communication

## September

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

## Lecture literate programs

The last lecture of each week is usually a hands-on live programming
session.

Literate copies of the programs developed in those lectures are
available here.

## Lecture hand-written notes

In some cases, some handwritten notes accompany the slides during
lecture. This term, those notes will be written on paper that can be
seen during the online lecture.

When possible, those notes are scanned and made available here.

## Tutorials

:TODO:

# Homework

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

**If there is any update to the Docker image,** **or if fir any other
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

:TODO:

# Ruby

:TODO:

# Clojure

:TODO:
