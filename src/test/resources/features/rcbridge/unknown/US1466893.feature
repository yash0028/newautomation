# Last updated on 
@US1466893
@releaseUnknown
@iterationUnknown
Feature: US1466893 - Owned / Affiliated

  @TC677414
  @Manual
  @Functional
  Scenario: TC677414 - [RL0]
    Given I am a User with access to view or maintain Entity information
    When I look at Tax ID information
    Then I can see if the Tax ID is owned by or affiliated to the Umbrella Entity

