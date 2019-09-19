# Last updated on 
@US2034384
@2019.PI09
@2019.PI09.02
@releasePresent
@iterationPresent
Feature: US2034384 - Multiple agreements on physician choosing Market

  @TC970896
  @Manual
  @Functional
  Scenario: TC970896 - [RL0]
    Given a physician negotiation exists with more than one agreement
    When the Market Numbers are more than 1 unique number
    Then the contractor is informed that they need to choose the market that will be used if there is any retro or locked language approvals later during the negotiation.
    And the choice of the Market Lead can't be changed
    And the contractor must choose the market they want to use

