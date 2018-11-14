# Last updated on 
@US1114656
@releaseUnknown
@iterationUnknown
Feature: US1114656 - Single TIN Owner

  @TC565673
  @Automated
  @Functional
  Scenario: TC565673 - [RL0]
    Given I am the Entity Management Solution
    When a User attempts to add a second Owner to a TIN
    Then the User can change the TIN Owner to a different Owner
    And the TIN can not have two active Owners at the same time

