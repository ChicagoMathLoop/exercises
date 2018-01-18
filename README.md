# exercises

There's only _one_ exercise here... but solutions and tests are available in multiple languages. What's more, the git project contains multiple branches, each corresponding to a specific skill-level.

## Your Goal

1. Enjoy learning or practicing a programming language
2. Demonstrate your programming skills to others

I cannot stress how important Goal #1 is. If you're not enjoying the exercise in a particular language, there's probably a specific reason for your troubles. It might be any of:

- you need to submit an issue because the exercise or its setup is poorly stated
- you need a tutor to clarify some things about what's going on
- you need to practice at a slightly higher or a slightly lower skill-level
- you need a rest and can try again later
- or something else

Enjoyment, or more hippy, "good vibes",  is an important emotional component in both learning and improving skills. When you get a "bad vibe" while learning or practicing a skill like programming, then that's an indication that something's wrong either in process or attitude, and you should find a way to correct it.

## Evaluation Criteria



## Languages

Currently prepared languages are:
  - ruby

## Exercise Instructions

( This exercise is a very-slight modification of http://exercism.io/exercises/go/etl/readme )

A common programming task is creating an Extract-Transform-Load (ETL) service. The exercise focuses on the "Transform" step of ETL; the exercise asks you to re-format data from one arbitrary format to another.

The provided data example describes a legacy system for storing scrabble scores. In the game of scrabble, letters have a specific score associated with them, on the following scale:

    1 point: "A", "E", "I", "O", "U", "L", "N", "R", "S", "T",
    2 points: "D", "G",
    3 points: "B", "C", "M", "P",
    4 points: "F", "H", "V", "W", "Y",
    5 points: "K",
    8 points: "J", "X",
    10 points: "Q", "Z"

The legacy system stored the score list verbatim. The new system will store the score list on a per letter basis (Advanced Bonus: What's the advantage of this change in scoring systems?). For example:


    "a" is worth 1 point.
    "b" is worth 3 points.
    "c" is worth 3 points.
    "d" is worth 2 points.
    Etc.

Please write code, to the best of your ability, that translates the example file data to the newer format.