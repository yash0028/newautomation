# Last updated on 
@US1930492
@2019.PI09
@2019.PI09.02
@releasePresent
@iterationFuture
Feature: US1930492 - Multiple agreements on physician requiring retro

  @TC905910
  @Manual
  @Functional
  Scenario: TC905910 - [RL0]
    Given a physician negotiation exists with more than one agreement
    When retro is required
    Then one retro process is started
    And the contractor can get approval for all agreements in one request based on the market number chosen in the Physician Negotiation.
    And the contractor doesn't need to input the deal IDs

  @TC970894
  @Manual
  @Functional
  Scenario: TC970894 - [RL1]
    Given a physician negotiation exists with one agreement
    When retro is required
    Then one retro process is started
    And the contractor doesn't need to input the deal IDs

