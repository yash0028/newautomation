# Last updated on 
@MVP
@EXARI-11273
@US944246
Feature: US944246 - Capture Entity Inactivation Time Lining History

  @TC565782
  @Automated
  @Functional
  Scenario: TC565782 - [RL0]
    Given I am the Entity Management Solution
    When A User inactivates an Entity
    Then I capture the User who performed the change
    And I capture the date and time of when the User inactivated the Entity

