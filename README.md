---
author: Mark Armstrong
description: README and the inlined homepage
title: Principle of Programming Languages
---

# Introduction

Repository of course notes and publically available assignment/test
documents

for a Principles of Programming Languages course; most recently, in
2020, specifically Computer Science 3mi3 at McMaster University.

The remainder of this README is an inlined copy of the some of the main
contents of the course homepage, better viewed at
<https://armkeh.github.io/principles-of-programming-languages/>

# Course outline

## Outline

The course outline is available as

- a printer friendly [PDF](./notes/0--Course-outline.pdf),
- a screen friendly [webpage](./notes/0--Course-outline.html), or
- a text-editor friendly [Org](./notes/0--Course-outline.org) file.

The webpage is also embedded here for convenience.
<iframe src="notes/0--Course-outline.html" style="width: 100%; height: 75vh"></iframe>

# Notes

## Lecture slides

The slides are available as

- Online [reveal.js](https://revealjs.com/) 2-dimensional slideshows,
- printable PDFs, or
- text-editor friendly plaintext Org files.

## Lecture hand-written notes

In some cases, some handwritten notes accompany the slides during
lecture.

When necessary and possible, those notes are scanned and made available
here. If any are missing that you would like to see, please ask.

# Literate programs

Tutorial sessions and the last lecture of each week are usually hands-on
live programming sessions. Partial notes will usually be posted ahead of
time, with some parts code snippets usually excluded to be filled in
during the session.

Literate copies of the programs developed in those lectures and
tutorials are available here. In some cases the same notes are used for
both a lecture and then a tutorial, in which case there will likely be
updates and additions between the two.

Particularly relevant portions of raw code may also be tangled
(extracted) into separate files, and then linked to directly here.

# Homework

## Current homeworks

## Unit testing policy

The unit testing policy for homeworks and assignments is laid out in
[appendix 4, under “Automated unit testing
policy”](./appendices/A4--Assessment-policies.html#automated-unit-testing-policy)
and is repeated below.

### The policy

Automated unit tests will be provided for all assignments, and whenever
possible and practical, they will also be provided for each homework.

**You should not submit the testing files with your assignment
contents**; it will not cause any problems, but testing files will be
ignored and overwritten before testing.

Alongside the files for unit testing, a [Docker](https://docker.com)
image will also be provided, in order to ensure that you are able to run
the tests in the exact same environment that the course staff will use.

Passing the provided tests is *mandatory*, but **does not** *guarantee*
a passing grade (both for homeworks and assignments.)

- Assignments will undergo a code review by the course staff, and your
  grade will be influenced just as much or more by your code's
  *approach* and *style* as by passing of tests.
- Homeworks will undergo a similar, but much more cursory, code review.
  Barring any obvious issues, you should receive a passing grade if your
  code passes the tests.

Submissions which do not pass all or a majority of the tests **may not
be considered for grading at all**, at the discretion of the course
staff.

During marking, we will typically add some *additional tests*, often
constructed to test what we consider to be more “extreme” cases than are
covered by the the provided tests, possibly including interesting [edge
cases](https://en.wikipedia.org/wiki/Edge_case).

- You are encouraged to try and think of these cases yourselves, and add
  appropriate tests to the provided ones in order to better check your
  solutions.
- You are not expected to submit any updates or additions to the testing
  files; as mentioned, any submissions of testing files will be ignored
  and overwritten.

## Previous homeworks

# Assignments

## Current assignments

## Literate documentation policy

The literate documentation policy for assignments is laid out in
[appendix 4, under “Assignment literate
documentation”](./appendices/A4--Assessment-policies.html#assignment-literate-doc-policy)
The policy itself is repeated below
[Style](./appendices/A4--Assessment-policies.html#assignment-literate-doc-style-guide)
and
[content](./appendices/A4--Assessment-policies.html#assignment-literate-doc-content-guide)
guides can be found in the appendix.

### The policy

In addition to source code files, assignments will also require you
submit *documentation* for your code in the form of a [literate
programming](http://www.literateprogramming.com/index.html) document.

20% of each assignment's marks are set aside for this documentation.

- 12% for the contents of the documentation, and
- 8% for the style of the documentation.
- Even if the assignment is incomplete, full documentation marks may be
  awarded,
  - so long as some parts are sufficiently completed,
  - and some discussion of the difficulties with missing parts is
    included.
    - (More than just “I ran out of time”.)

Any of the following formats are acceptable for this documentation:

- Markdown ([homepage](https://daringfireball.net/projects/markdown/))
- Org mode ([homepage](https://orgmode.org/))
  - Implementations outside of Emacs exist, but typically have somewhat
    minimal features.
- ReStructured text
  ([homepage](https://docutils.sourceforge.io/rst.html))
- HTML
  - Using `<code>` tags,
  - and preferably a tool to provide syntax highlighting, such as
    - [highlight.js](https://highlightjs.org/usage/) or
    - [Prism](https://prismjs.com/#basic-usage)
- PDF
  - In particular, through LaTeX
    ([homepage](https://www.latex-project.org/))
    - Using a package such as `listings`
      ([documentation](https://en.wikibooks.org/wiki/LaTeX/Source_Code_Listings))
      or `minted`, which provides syntax highlighting ([GitHub homepage
      and documentation](https://github.com/gpoore/minted))
- Possibly more; speak to us if there is a format you feel should be
  accepted.
  - Microsoft Word, OpenOffice and other WSIWYG (What You See Is What
    You Get) editor formats will not be accepted.
    - If you wish to use such an editor, you may export your file to a
      PDF for submission. Do be sure to follow the style guidelines
      below.

## Unit testing policy

The unit testing policy for homeworks and assignments is laid out in
[appendix 4, under “Automated unit testing
policy”](./appendices/A4--Assessment-policies.html#automated-unit-testing-policy)
The policy is repeated below. Style and content guides can be found in
the appendix.

### The policy

Automated unit tests will be provided for all assignments, and whenever
possible and practical, they will also be provided for each homework.

**You should not submit the testing files with your assignment
contents**; it will not cause any problems, but testing files will be
ignored and overwritten before testing.

Alongside the files for unit testing, a [Docker](https://docker.com)
image will also be provided, in order to ensure that you are able to run
the tests in the exact same environment that the course staff will use.

Passing the provided tests is *mandatory*, but **does not** *guarantee*
a passing grade (both for homeworks and assignments.)

- Assignments will undergo a code review by the course staff, and your
  grade will be influenced just as much or more by your code's
  *approach* and *style* as by passing of tests.
- Homeworks will undergo a similar, but much more cursory, code review.
  Barring any obvious issues, you should receive a passing grade if your
  code passes the tests.

Submissions which do not pass all or a majority of the tests **may not
be considered for grading at all**, at the discretion of the course
staff.

During marking, we will typically add some *additional tests*, often
constructed to test what we consider to be more “extreme” cases than are
covered by the the provided tests, possibly including interesting [edge
cases](https://en.wikipedia.org/wiki/Edge_case).

- You are encouraged to try and think of these cases yourselves, and add
  appropriate tests to the provided ones in order to better check your
  solutions.
- You are not expected to submit any updates or additions to the testing
  files; as mentioned, any submissions of testing files will be ignored
  and overwritten.

## Previous assignments

# Appendices

These appendices complement the other course documents, providing key
information both in terms of the content of the course and its
administration.

In many cases, information from these appendices will be imported into
the other course documents, usually with a note and a link back to the
appendix.

## Appendix 1 – Notation and conventions

- [Webpage](./appendices/A1--Notation-and-conventions.html)
- [PDF](./appendices/A1--Notation-and-conventions.pdf)
- [Org plaintext](./appendices/A1--Notation-and-conventions.org)

## Appendix 2 – Software and tools

- [Webpage](./appendices/A2--Software-and-tools.html)
- [PDF](./appendices/A2--Software-and-tools.pdf)
- [Org plaintext](./appendices/A2--Software-and-tools.org)

## Appendix 3 – External resources

- [Webpage](./appendices/A3--External-resources.html)
- [PDF](./appendices/A3--External-resources.pdf)
- [Org plaintext](./appendices/A3--External-resources.org)

## Appendix 4 – Assessment policies

- [Webpage](./appendices/A4--Assessment-policies.html)
- [PDF](./appendices/A4--Assessment-policies.pdf)
- [Org plaintext](./appendices/A4--Assessment-policies.org)

# Language information

This tab would be used for information regarding the first programming
language used in the course. Other such tabs would be added as the
course goes on.

## Tidbits

Answers to some common or interesting questions that have come up
regarding the use of (first language, TBD) in this course can be found
in the (first language, TBD) tidbits file, which will be made available
here.

## Resources

Herein are collected some general resources for (first language, TBD).
These resources may be particularly useful to learn more about the
language than what we cover in this course.

## Installation instructions
