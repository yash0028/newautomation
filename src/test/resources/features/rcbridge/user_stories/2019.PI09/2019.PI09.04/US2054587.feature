# Last updated on 
@Suman
@US2054587
@2019.PI09
@2019.PI09.04
@releasePresent
@iterationFuture
Feature: US2054587 - Retro - shouldn't need to input the contract id from physician

  @TC998203
  @Manual
  @Functional
  @Suman
  Scenario: TC998203 - [RL0]
    Given a physician negotiation exists
    When retro is started
    Then the user does not have to input the deal IDs

