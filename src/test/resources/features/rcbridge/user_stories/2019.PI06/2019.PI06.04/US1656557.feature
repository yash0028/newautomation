# Last updated on 
@Sheham
@US1656557
@2019.PI06
@2019.PI06.04
@releaseUnknown
@iterationUnknown
Feature: US1656557 - Holidays for due dates in AM

  @TC758900
  @Manual
  @Functional
  @Sheham
  Scenario: TC758900 - [RL0]Due Date with Holidays
    Given a task has a due date
    When it is on a holiday, 12/25
    Then the due date is the day after the holiday

  @TC770245
  @Manual
  @Functional
  @Sheham
  Scenario: TC770245 - [RL1]
    Given a task has a due date
    When it is on a holiday 7/4
    Then the due date is the day after the holiday

  @TC770246
  @Manual
  @Functional
  @Sheham
  Scenario: TC770246 - [RL2]
    Given a task has a due date
    When it is on a holiday, 1/1
    Then the due date is the day after the holiday

  @TC770248
  @Manual
  @Functional
  @Sheham
  Scenario: TC770248 - [RL3]
    Given a task has a due date
    When it is on a holiday, Memorial - last Monday of May
    Then the due date is the day after the holiday

  @TC770250
  @Manual
  @Functional
  @Sheham
  Scenario: TC770250 - [RL4]
    Given a task has a due date
    When it is on a holiday, Labor day - first Monday of September
    Then the due date is the day after the holiday

  @TC770251
  @Manual
  @Functional
  @Sheham
  Scenario: TC770251 - [RL5]
    Given a task has a due date
    When it is on a holiday, Thanksgiving - 4th Thursday of November and the Friday directly after
    Then the due date is the day after the holiday

  @TC770252
  @Manual
  @Functional
  @Sheham
  Scenario: TC770252 - [RL6]
    Given a task has a due date
    When it is on a holiday, Martin Luther King - 3rd Monday of January
    Then the due date is the day after the holiday

