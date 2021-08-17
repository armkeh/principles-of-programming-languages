
# Table of Contents

1.  [Introduction](#org-anchor-Introduction^1)
2.  [Course outline](#orgac317fe)
    1.  [Outline](#org-anchor-Outline^1)
3.  [Notes](#orgcdd01cb)
    1.  [Lecture slides](#org-anchor-Lecture-slides^1)
    2.  [Lecture hand-written notes](#org-anchor-Lecture-hand-written-notes^1)
4.  [Literate programs](#orge538117)
5.  [Homework](#org8aab88d)
    1.  [Current homeworks](#org-anchor-Current-homeworks^1)
    2.  [Unit testing policy](#org-anchor-Unit-testing-policy^1)
        1.  [Policy](#org-anchor-Policy^1)
    3.  [Previous homeworks](#org-anchor-Previous-homeworks^1)
6.  [Assignments](#org75cf5fc)
    1.  [Current assignments](#org-anchor-Current-assignments^1)
    2.  [Literate documentation policy](#org-anchor-Literate-documentation-policy^1)
    3.  [Unit testing policy](#org-anchor-Unit-testing-policy^2)
        1.  [Policy](#org-anchor-Policy^2)
    4.  [Previous assignments](#org-anchor-Previous-assignments^1)
7.  [Appendices](#orgddf353d)
    1.  [Appendix 1 – Notation and conventions](#org-anchor-Appendix-1-–-Notation-and-conventions^1)
    2.  [Appendix 2 – Software and tools](#org-anchor-Appendix-2-–-Software-and-tools^1)
    3.  [Appendix 3 – External resources](#org-anchor-Appendix-3-–-External-resources^1)
    4.  [Appendix 4 – Assessment policies](#org-anchor-Appendix-4-–-Assessment-policies^1)
8.  [Language information](#org3c92a24)
    1.  [Tidbits](#org-anchor-Tidbits^1)
    2.  [Resources](#org-anchor-Resources^1)
    3.  [Installation instructions](#org-anchor-Installation-instructions^1)



<a id="org-anchor-Introduction^1"></a>

# Introduction

Repository of course notes and publically available assignment/test documents

for a Principles of Programming Languages course;
most recently, in 2020, specifically Computer Science 3mi3 at McMaster University.

The remainder of this README is an inlined copy of
the main contents of the course homepage, better viewed at
<https://armkeh.github.io/principles-of-programming-languages/>


<a id="orgac317fe"></a>

# Course outline


<a id="org-anchor-Outline^1"></a>

## Outline

The course outline is available as

-   a printer friendly [PDF](./notes/0--Course-outline.pdf),
-   a screen friendly [webpage](./notes/0--Course-outline.html), or
-   a text-editor friendly [Org](./notes/0--Course-outline.md) file.

The webpage is also embedded here for convenience.
<iframe src="notes/0--Course-outline.html" style="width: 100%; height: 75vh"></iframe>


<a id="orgcdd01cb"></a>

# Notes


<a id="org-anchor-Lecture-slides^1"></a>

## Lecture slides

The slides are available as

-   Online [reveal.js](https://revealjs.com/) 2-dimensional slideshows,
-   printable PDFs, or
-   text-editor friendly plaintext Org files.


<a id="org-anchor-Lecture-hand-written-notes^1"></a>

## Lecture hand-written notes

In some cases, some handwritten notes accompany the slides
during lecture.

When necessary and possible,
those notes are scanned and made available here.
If any are missing that you would like to see, please ask.


<a id="orge538117"></a>

# Literate programs

Tutorial sessions and
the last lecture of each week are usually
hands-on live programming sessions.
Partial notes will usually be posted ahead of time,
with some parts code snippets usually excluded
to be filled in during the session.

Literate copies of the programs developed
in those lectures and tutorials are available here.
In some cases the same notes are used
for both a lecture and then a tutorial,
in which case there will likely be updates and additions
between the two.

Particularly relevant portions of raw code may also
be tangled (extracted) into separate files,
and then linked to directly here.


<a id="org8aab88d"></a>

# Homework


<a id="org-anchor-Current-homeworks^1"></a>

## Current homeworks


<a id="org-anchor-Unit-testing-policy^1"></a>

## Unit testing policy

The unit testing policy for homeworks and assignments
is laid out in
[appendix 4, under “Automated unit testing policy”](./appendices/A4--Assessment-policies.md)
and is repeated below.


<a id="org-anchor-Policy^1"></a>

### Policy

Automated unit tests will be provided for all assignments,
and whenever possible and practical,
they will also be provided for each homework.

**You should not submit the testing files with your assignment contents**;
it will not cause any problems, but testing files will be ignored
and overwritten before testing.

Alongside the files for unit testing,
a [Docker](https://docker.com) image
will also be provided, in order to ensure that
you are able to run the tests in the exact same environment
that the course staff will use.

Passing the provided tests is *mandatory*,
but **does not** *guarantee* a passing grade
(both for homeworks and assignments.)

-   Assignments will undergo a code review by the course staff,
    and your grade will be influenced just as much or more
    by your code's *approach* and *style* as by passing of tests.
-   Homeworks will undergo a similar, but much more cursory, code review.
    Barring any obvious issues, you should receive a passing grade
    if your code passes the tests.

Submissions which do not pass
all or a majority of the tests **may not be considered for grading at all**,
at the discretion of the course staff.

During marking, we will typically add some *additional tests*,
often constructed to test what we consider to be
more “extreme” cases than are covered by the the provided tests,
possibly including interesting [edge cases](https://en.wikipedia.org/wiki/Edge_case).

-   You are encouraged to try and think of these cases yourselves,
    and add appropriate tests to the provided ones
    in order to better check your solutions.
-   You are not expected to submit any updates or additions
    to the testing files; as mentioned, any submissions of testing files
    will be ignored and overwritten.


<a id="org-anchor-Previous-homeworks^1"></a>

## Previous homeworks


<a id="org75cf5fc"></a>

# Assignments


<a id="org-anchor-Current-assignments^1"></a>

## Current assignments


<a id="org-anchor-Literate-documentation-policy^1"></a>

## Literate documentation policy

The literate documentation policy for assignments
is laid out in
[appendix 4, under “Assignment literate documentation”](./appendices/A4--Assessment-policies.html#org-anchor-Assignment-literate-documentation-policy^1)
The policy itself is repeated below.
[Style](./appendices/A4--Assessment-policies.html#org-anchor-Assignment-literate-documentation-style-guide^1)
and
[content](./appendices/A4--Assessment-policies.html#org-anchor-Assignment-literate-documentation-content-guide^1)
guides can be found in the appendix.


<a id="org-anchor-Unit-testing-policy^2"></a>

## Unit testing policy

The unit testing policy for homeworks and assignments
is laid out in
[appendix 4, under “Assignment literate documentation”](./appendices/A4--Assessment-policies.md)
The policy is repeated below.
Style and content guides can be found in the appendix.


<a id="org-anchor-Policy^2"></a>

### Policy

Automated unit tests will be provided for all assignments,
and whenever possible and practical,
they will also be provided for each homework.

**You should not submit the testing files with your assignment contents**;
it will not cause any problems, but testing files will be ignored
and overwritten before testing.

Alongside the files for unit testing,
a [Docker](https://docker.com) image
will also be provided, in order to ensure that
you are able to run the tests in the exact same environment
that the course staff will use.

Passing the provided tests is *mandatory*,
but **does not** *guarantee* a passing grade
(both for homeworks and assignments.)

-   Assignments will undergo a code review by the course staff,
    and your grade will be influenced just as much or more
    by your code's *approach* and *style* as by passing of tests.
-   Homeworks will undergo a similar, but much more cursory, code review.
    Barring any obvious issues, you should receive a passing grade
    if your code passes the tests.

Submissions which do not pass
all or a majority of the tests **may not be considered for grading at all**,
at the discretion of the course staff.

During marking, we will typically add some *additional tests*,
often constructed to test what we consider to be
more “extreme” cases than are covered by the the provided tests,
possibly including interesting [edge cases](https://en.wikipedia.org/wiki/Edge_case).

-   You are encouraged to try and think of these cases yourselves,
    and add appropriate tests to the provided ones
    in order to better check your solutions.
-   You are not expected to submit any updates or additions
    to the testing files; as mentioned, any submissions of testing files
    will be ignored and overwritten.


<a id="org-anchor-Previous-assignments^1"></a>

## Previous assignments


<a id="orgddf353d"></a>

# Appendices

These appendices complement the other course documents,
providing key information both in terms of the content of the course
and its administration.

In many cases, information from these appendices
will be imported into the other course documents,
usually with a note and a link back to the appendix.


<a id="org-anchor-Appendix-1-–-Notation-and-conventions^1"></a>

## Appendix 1 – Notation and conventions

-   [Webpage](./appendices/A1--Notation-and-conventions.html)
-   [PDF](./appendices/A1--Notation-and-conventions.pdf)
-   [Org plaintext](./appendices/A1--Notation-and-conventions.md)


<a id="org-anchor-Appendix-2-–-Software-and-tools^1"></a>

## Appendix 2 – Software and tools

-   [Webpage](./appendices/A2--Software-and-tools.html)
-   [PDF](./appendices/A2--Software-and-tools.pdf)
-   [Org plaintext](./appendices/A2--Software-and-tools.md)


<a id="org-anchor-Appendix-3-–-External-resources^1"></a>

## Appendix 3 – External resources

-   [Webpage](./appendices/A3--External-resources.html)
-   [PDF](./appendices/A3--External-resources.pdf)
-   [Org plaintext](./appendices/A3--External-resources.md)


<a id="org-anchor-Appendix-4-–-Assessment-policies^1"></a>

## Appendix 4 – Assessment policies

-   [Webpage](./appendices/A4--Assessment-policies.html)
-   [PDF](./appendices/A4--Assessment-policies.pdf)
-   [Org plaintext](./appendices/A4--Assessment-policies.md)


<a id="org3c92a24"></a>

# Language information

This tab would be used for information regarding
the first programming language used in the course.
Other such tabs would be added as the course goes on.


<a id="org-anchor-Tidbits^1"></a>

## Tidbits

Answers to some common or interesting questions that have come up
regarding the use of
(first language, TBD)
in this course can be found in the
(first language, TBD) tidbits file,

which will be made available here.


<a id="org-anchor-Resources^1"></a>

## Resources

Herein are collected some general resources for
(first language, TBD).
These resources may be particularly useful to learn
more about the language than what we cover in this course.


<a id="org-anchor-Installation-instructions^1"></a>

## Installation instructions

