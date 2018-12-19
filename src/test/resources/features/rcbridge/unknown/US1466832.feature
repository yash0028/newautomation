# Last updated on 
@US1466832
@releaseUnknown
@iterationUnknown
Feature: US1466832 - EMR Access Indicator

  @TC677413
  @Manual
  @Functional
  Scenario: TC677413 - [RL0]
    Given I am a User with access to view and maintain Entity information
    When I view Tax ID information
    Then I can see which EMR access option is available for the Entity I am viewing

