# Last updated on 
@US2078473
@releaseUnknown
@iterationUnknown
Feature: US2078473 - Multiple agreements requiring retro - both physician and facility

  @TC997017
  @Manual
  @Functional
  Scenario: TC997017 - [RL0]
    Given a physician negotiation exists with more than one agreement
    When retro is required
    Then one retro process is started
    And the contractor can get approval for all agreements in one request based on the market number chosen in the Physician Negotiation.
    And the contractor doesn't need to input the deal IDs
    And it is non-editable

  @TC997020
  @Manual
  @Functional
  Scenario: TC997020 - [RL1]
    Given a physician negotiation exists with one agreement
    When retro is required
    Then one retro process is started
    And the contractor doesn't need to input the deal IDs
    And it is non-editable

