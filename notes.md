Intro to Automated Testing, TDD, BDD
=====

Automated Testing

 - You are testing it as you build anyway (via IRB, or re-running it multiple times)
 - Doing it manually :(
 - But, we're programmers! repetitive processes are exactly the sort of things we're good at automating
 - Instead: write scripts that repeatedly test your code
 - benefits:
   - saves you time (from manually running tests)
   - less things to keep in your head (don't need to keep the entire application in your head, just the part you're working on)
   - less things to remember (when you come back to a project after a while)
   - tests can act as documentation
   - avoid things breaking when multiple people work together
   - avoid "regression"
   - Bonus: writing code that is easy to test sometimes requires you to change how you write your code (often for the better)






Levels of Testing

  - happy path
    - test ideal path, using the user interface
  - bugs
    - write tests for bugs that have been caught
  - classes
     - classes are used to group certain data and functionality together, and expose an interface and hide implementation
     - you should test "the interface" (public methods) and interactions, not implementation (ex. don't test private methods)











TDD: Test Driven Development

 - more than just "write tests first", it's a process of building applications
 - process:
      - write test (red)
      - do minimum to make test pass (green)
      - *commit*
      - refactor
      - *commit*
      - repeat

 - benefits:
    - writing test first better gaurantees the test is not wrong
    - forces you to code "outside-in"
      - ie. write code you wish you had
      - makes you think about how the code is used, vs. just the implementation
      - results in better design

RSpec
 - ruby library used for testing (by far the most popular)
 - live code: https://github.com/rafd/lighthouse-w2d2


DEMO TIME






Usually have:
   - 1 spec per class
   - extra specs for interactions between classes, different contexts, happy path, bugs etc.
   - (like organizing your code, organizing your tests becomes its own challenge)

BDD: Behaviour Driven Development
 - tests described from point-of-view of various stakeholders (end-user, administrator)
   - therefore, would usually be testing the user-interface and other user facing parts of an application (ex. email)
 - often written in form "given... when... then..."
 - written in the language of the user
 - see: https://en.wikipedia.org/wiki/Behavior-driven_development
 - in ruby land, BDD tests are often written with the help of cucumber: https://cucumber.io/


Writing Better Tests:
 - stubs and mocks
    - fake objects and methods
    - useful when you haven't implemented a class that your current class interacts with
    - also helps your tests to become more independent (ideally, test file testing Class A would *only* require Class A )
    - see ./soldier.rb
 - rspec also has 'subject', 'let', contexts

