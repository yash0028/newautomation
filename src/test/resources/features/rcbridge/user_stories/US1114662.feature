# Last updated on 
@US1114662
Feature: US1114662 - Legal TIN Owner

  @TC565253
  @Automated
  @Functional
  Scenario: TC565253 - [RL0]
    Given I am the Entity Management Solution
    When a User is adding an Owner to a TIN
    Then the Owner must be the Legal Owner responsible for reporting to the government

