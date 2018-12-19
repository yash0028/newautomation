# Last updated on 
@US1466901
@releaseUnknown
@iterationUnknown
Feature: US1466901 - Delegated for Credentialing

  @TC677411
  @Manual
  @Functional
  Scenario: TC677411 - [RL0]
    Given I am a User with access to view or maintain Entity information
    When I look at Tax ID information
    Then I can see if the Tax ID is fully, partially, or not delegated for credentialing

