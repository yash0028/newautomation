# Last updated on 
@US1160655
@2019.PI09
@2019.PI09.02
@releasePresent
@iterationFuture
Feature: US1160655 - Variable - Attach Escalator Driver supporting file - Rate Escalator

  @TC564693
  @Automated
  @Functional
  Scenario: TC564693 - [RL0]
    Given a rate escalator process exists
    When initiator opens "HCE Modeling Received Task"
    Then the process initiator is able to Attach Escalator Driver supporting file

