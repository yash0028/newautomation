# Last updated on 
@US858704
@Plus
@releaseUnknown
@iterationUnknown
Feature: US858704 - Capture Business Rule Time Lining History

  @TC565146
  @Automated
  @Functional
  Scenario: TC565146 - [RL0]
    Given I am the Entity Management Solution
    When a User creates a business rule
    And a User edits a business rule
    Then I capture the effective date of the business rule
    And I capture the end date of the business rule
    And I capture the User who performed the change
    And I capture the time and date of when the User performed the change

