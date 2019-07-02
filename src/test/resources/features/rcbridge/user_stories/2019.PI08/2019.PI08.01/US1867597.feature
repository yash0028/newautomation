# Last updated on 
@Sheham
@US1867597
@2019.PI08
@2019.PI08.01
@releasePresent
@iterationPresent
Feature: US1867597 - Package the business calendar

  @TC874169
  @Manual
  @Functional
  @Sheham
  Scenario: TC874169 - [RL1]
    Given a task has a due date
    When it is on a holiday 7/4
    Then the due date is the day after the holiday

  @TC874170
  @Manual
  @Functional
  @Sheham
  Scenario: TC874170 - [RL2]
    Given a task has a due date
    When it is on a holiday, 1/1
    Then the due date is the day after the holiday

  @TC874171
  @Manual
  @Functional
  @Sheham
  Scenario: TC874171 - [RL3]
    Given a task has a due date
    When it is on a holiday, Memorial - last Monday of May
    Then the due date is the day after the holiday

  @TC874172
  @Manual
  @Functional
  @Sheham
  Scenario: TC874172 - [RL4]
    Given a task has a due date
    When it is on a holiday, Labor day - first Monday of September
    Then the due date is the day after the holiday

  @TC874173
  @Manual
  @Functional
  @Sheham
  Scenario: TC874173 - [RL5]
    Given a task has a due date
    When it is on a holiday, Thanksgiving - 4th Thursday of November and the Friday directly after
    Then the due date is the day after the holiday

  @TC874174
  @Manual
  @Functional
  @Sheham
  Scenario: TC874174 - [RL6]
    Given a task has a due date
    When it is on a holiday, Martin Luther King - 3rd Monday of January
    Then the due date is the day after the holiday

