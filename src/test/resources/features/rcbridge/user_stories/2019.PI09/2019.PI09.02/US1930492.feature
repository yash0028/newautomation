# Last updated on 
@Arvind
@Suman
@US1930492
@2019.PI09
@2019.PI09.02
@releasePresent
@iterationPresent
Feature: US1930492 - Multiple agreements on physician requiring retro

  @TC905910
  @Manual
  @Functional
  @Arvind
  @Suman
  Scenario: TC905910 - [RL0]
    Given a physician negotiation exists with more than one agreement
    When retro is required
    Then one retro process is started
    And the contractor can get approval for all agreements in one request based on the market number chosen in the Physician Negotiation.
    And the contractor doesn't need to input the deal IDs
    And it is non-editable

  @TC970894
  @Manual
  @Functional
  @Arvind
  @Suman
  Scenario: TC970894 - [RL1]
    Given a physician negotiation exists with one agreement
    When retro is required
    Then one retro process is started
    And the contractor doesn't need to input the deal IDs
    And it is non-editable

