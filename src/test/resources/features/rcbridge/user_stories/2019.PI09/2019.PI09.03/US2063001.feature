# Last updated on 
@US2063001
@2019.PI09
@2019.PI09.03
@releasePresent
@iterationFuture
Feature: US2063001 - Rate Escalator Statuses

  @TC987534
  @Manual
  @Functional
  Scenario: TC987534 - [RL0]
    Given the retro process is started
    When the process exists but has not gone beyond the initial task
    Then the retro status is "Created"

  @TC987539
  @Manual
  @Functional
  Scenario: TC987539 - [RL1]
    Given the retro process is started
    When the "initiate retro" task is completed
    Then the retro status is "Pending Decisions"

  @TC987540
  @Manual
  @Functional
  Scenario: TC987540 - [RL2]
    Given the retro process is started
    When the the process move to the monitor Phase
    Then the retro status is "Monitor phase- Approved"

  @TC987541
  @Manual
  @Functional
  Scenario: TC987541 - [RL3]
    Given the retro is in the monitor phase
    When the 60 days timer expires
    Then the retro status is "Monitor phase- Expired"

  @TC987542
  @Manual
  @Functional
  Scenario: TC987542 - [RL4]
    Given the retro process is started
    When the "Withdraw retro" task is completed
    Then the retro status is "Withdrawn"

