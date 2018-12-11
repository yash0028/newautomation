# Last updated on 
@US1466830
@releaseUnknown
@iterationUnknown
Feature: US1466830 - Expiration Date

  @TC672221
  @Manual
  @Functional
  Scenario: TC672221 - [RL0]
    Given I am a User with access to view and maintain Entity information
    When I am viewing information about a Tax ID associated to an Entity
    Then I see the Expiration Date for each Tax ID related to an Entity

