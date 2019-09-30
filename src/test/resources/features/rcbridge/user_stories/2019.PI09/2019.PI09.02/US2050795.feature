# Last updated on 
@Sheham
@#QA
@US2050795
@2019.PI09
@2019.PI09.02
@releasePresent
@iterationPresent
Feature: US2050795 - Retro Approval Statuses

  @TC979534
  @Manual
  @Functional
  @Sheham
  @#QA
  Scenario: TC979534 - [RL0]
    Given the retro process is started
    When the process exists but has not gone beyond the initial task
    Then the retro status is "Created" in the variable "process_state"

  @TC979535
  @Manual
  @Functional
  @Sheham
  @#QA
  Scenario: TC979535 - [RL1]
    Given the retro process is started
    When the "initiate retro" task is completed
    Then the retro status is "Pending Decisions"

  @TC979536
  @Manual
  @Functional
  @Sheham
  @#QA
  Scenario: TC979536 - [RL2]
    Given the retro process is started
    When the the process move to the monitor Phase
    Then the retro status is "Monitor phase- Approved"

  @TC979537
  @Manual
  @Functional
  @Sheham
  @#QA
  Scenario: TC979537 - [RL3]
    Given the retro is in the monitor phase
    When the 60 days timer expires
    Then the retro status is "Monitor phase- Expired"

  @TC979538
  @Manual
  @Functional
  @Sheham
  @#QA
  Scenario: TC979538 - [RL4]
    Given the retro process is started
    When the "Withdraw retro" task is completed
    Then the retro status is "Withdrawn"

