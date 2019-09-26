# Last updated on 
@US2075094
@2019.PI09
@releasePresent
@iterationUnknown
Feature: US2075094 - Rate Escalator Statuses - reporting

  @TC995123
  @Manual
  @Functional
  Scenario: TC995123 - [RL0]
    Given the rate escalator process is started
    When the process exists but has not gone beyond the "Review Rate Escalator Details" task
    Then the rate escalator status is "Created"

  @TC995125
  @Manual
  @Functional
  Scenario: TC995125 - [RL1]
    Given the rate escalator process is started
    When the "Review Rate Escalator Details" task is completed with the Fee schedules were pre-constructed radio button selected)
    Then the rate escalator status is "Ended -No work needed"

  @TC995127
  @Manual
  @Functional
  Scenario: TC995127 - [RL2]
    Given the rate escalator process is started
    When the "HCE Modeling: Request Submitted" task is created
    Then the rate escalator status is "In-Process"
    And the status remains the same until the Loading: submit for loading task is completed

  @TC995129
  @Manual
  @Functional
  Scenario: TC995129 - [RL3]
    Given the rate escalator process is started
    When the the "Loading: Submit for loading" task is completed
    Then the rate escalator status is "Submitted for load"

  @TC995131
  @Manual
  @Functional
  Scenario: TC995131 - [RL4]
    Given the rate escalator process is started
    When the "Withdraw Rate Escalator" task is completed
    Then the rate escalator status is "Withdrawn"

  @TC995133
  @Manual
  @Functional
  Scenario: TC995133 - [RL6]
    Given a rate escalator process is started
    When a rate escalator status exists
    Then the status is available for reporting

