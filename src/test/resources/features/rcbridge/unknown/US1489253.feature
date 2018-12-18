# Last updated on 
@US1489253
@releaseUnknown
@iterationUnknown
Feature: US1489253 - EMR Vendor

  @TC677412
  @Manual
  @Functional
  Scenario: TC677412 - [RL0]
    Given I am a User with access to view or maintain Entity information
    When I view Tax ID information
    Then I can see the EMR Vendor in use by the Entity

