# Last updated on 
@Arvind
@#QA
@Suman
@US1937042
@2019.PI09
@2019.PI09.01
@releasePresent
@iterationPresent
Feature: US1937042 - Contractor Name and withdraw rate escalator process

  @TC960461
  @Manual
  @Functional
  @Arvind
  @#QA
  @Suman
  Scenario: TC960461 - [RL0]
    Given a rate escalator process exists
    When Input Rate Escalator Contract id is completed
    Then a task Review Rate Escalator Details is assigned to the initiator
    And the contract owner name is displayed in the demographic details section instead of MS ID of the contractor

  @TC960463
  @Manual
  @Functional
  @Arvind
  @#QA
  @Suman
  Scenario: TC960463 - [RL1]
    Given a rate escalator process exists
    When "Review Rate Escalator Details" task is completed
    Then a task "Withdraw Rate Escalator Request" task is created
    And the task is assigned to the initiator
    And the task has these options as a radio button (Work is not needed as Fee Schedules were pre-constructed, Created in error, Other)
    And the task has a withdrawal comments box (not required)

  @TC960465
  @Manual
  @Functional
  @Arvind
  @#QA
  @Suman
  Scenario: TC960465 - [RL2]
    Given a rate escalator process exists
    When initiator completes the "Withdraw Rate Escalator Request"
    Then all open tasks are closed

