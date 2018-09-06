# Last updated on 
@MVP
@CLM_UAT
@US858706
@2018.PI03
Feature: US858706 - View Business Rule Time Lining History

  @TC565850
  @Automated
  @Functional
  Scenario: TC565850 - [RL0]
    Given I am a User with access to view and maintain Entity information
    When I want to view time lining history for Business Rules
    Then I can view Business Rule effective dates
    And I can view the Business Rule end dates
    And I can view the User who added or removed a Business Rule
    And I can view the date and time of when the User performed the change

