# Last updated on 
@US1690940
@2019.PI07
@2019.PI07.05
@releasePast
@iterationPast
Feature: US1690940 - Holidays for due dates in AM - when the holiday falls on the weekend

  @TC776493
  @Manual
  @Functional
  Scenario: TC776493 - [RL0]
    Given a task has a due date
    When it is on a holiday, 12/25
    Then the due date is the day after the holiday

  @TC776495
  @Manual
  @Functional
  Scenario: TC776495 - [RL1]
    Given a task has a due date
    When it is on a holiday 7/4
    Then the due date is the day after the holiday

  @TC776496
  @Manual
  @Functional
  Scenario: TC776496 - [RL2]
    Given a task has a due date
    When it is on a holiday, 1/1
    Then the due date is the day after the holiday

  @TC776497
  @Manual
  @Functional
  Scenario: TC776497 - [RL3]
    Given a task has a due date
    When it is on a holiday, Memorial - last Monday of May
    Then the due date is the day after the holiday

  @TC776498
  @Manual
  @Functional
  Scenario: TC776498 - [RL4]
    Given a task has a due date
    When it is on a holiday, Labor day - first Monday of September
    Then the due date is the day after the holiday

  @TC776499
  @Manual
  @Functional
  Scenario: TC776499 - [RL5]
    Given a task has a due date
    When it is on a holiday, Thanksgiving - 4th Thursday of November and the Friday directly after
    Then the due date is the day after the holiday

  @TC776500
  @Manual
  @Functional
  Scenario: TC776500 - [RL6]
    Given a task has a due date
    When it is on a holiday, Martin Luther King - 3rd Monday of January
    Then the due date is the day after the holiday

