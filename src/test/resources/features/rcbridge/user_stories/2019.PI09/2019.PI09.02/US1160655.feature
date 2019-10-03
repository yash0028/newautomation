# Last updated on 
@Arvind
@Suman
@US1160655
@2019.PI09
@2019.PI09.02
@releasePresent
@iterationPast
Feature: US1160655 - Variable - Attach Escalator Driver supporting file - Rate Escalator

  @TC564693
  @Manual
  @Functional
  @Arvind
  @Suman
  Scenario: TC564693 - [RL0]
    Given a rate escalator process exists
    When initiator opens "HCE Modeling Received Task"
    Then the process initiator is able to Attach Escalator Driver supporting file

  @TC989430
  @Manual
  @Functional
  @Arvind
  @Suman
  Scenario: TC989430 - [RL1]
    Given a contractor is on the Review Rate Escalator Details task in the rate escalator process
    When they select "No work needed as Fee schedules were pre-constructed'
    Then no new tasks are created when the task is completed
    And the process ends

