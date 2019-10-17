# Last updated on 
@Arvind
@US2063001
@2019.PI09
@releasePresent
@iterationUnknown
Feature: US2063001 - Rate Escalator Statuses

  @TC987534
  @Manual
  @Functional
  @Arvind
  Scenario: TC987534 - [RL0]
    Given the rate escalator process is started
    When the process exists but has not gone beyond the "Review Rate Escalator Details" task
    Then the rate escalator status is "Created" in the variable "process_state"

  @TC987539
  @Manual
  @Functional
  @Arvind
  Scenario: TC987539 - [RL1]
    Given the rate escalator process is started
    When the "Review Rate Escalator Details" task is completed with the Fee schedules were pre-constructed radio button selected)
    Then the rate escalator status is "Ended -No work needed"

  @TC987540
  @Manual
  @Functional
  @Arvind
  Scenario: TC987540 - [RL2]
    Given the rate escalator process is started
    When the "HCE Modeling: Request Submitted" task is created
    Then the rate escalator status is "In-Process"
    And the status remains the same until the Loading: submit for loading task is completed

  @TC987541
  @Manual
  @Functional
  @Arvind
  Scenario: TC987541 - [RL3]
    Given the rate escalator process is started
    When the the "Loading: Submit for loading" task is completed
    Then the rate escalator status is "Submitted for load"

  @TC987542
  @Manual
  @Functional
  @Arvind
  Scenario: TC987542 - [RL4]
    Given the rate escalator process is started
    When the "Withdraw Rate Escalator" task is completed
    Then the rate escalator status is "Withdrawn"

  @TC989431
  @Manual
  @Functional
  @Arvind
  Scenario: TC989431 - [RL6]
    Given the rate escalator process is started
    When the user is viewing any task
    Then the current status is displayed on each task (for testing we'll create a dummy task to display the status for post withdrawal)

