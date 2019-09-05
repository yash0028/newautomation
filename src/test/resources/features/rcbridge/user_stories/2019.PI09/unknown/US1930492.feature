# Last updated on 
@US1930492
@2019.PI09
@releasePresent
@iterationUnknown
Feature: US1930492 - Multiple agreements on physician requiring retro

  @TC905910
  @Manual
  @Functional
  Scenario: TC905910 - [RL0]
    Given a physician negotiation exists with more than one agreement
    When retro is required
    Then one retro process is started
    And the contractor have get approval for all agreements in one request based on the market number.

