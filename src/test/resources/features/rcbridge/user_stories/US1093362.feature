# Last updated on 
@EXARI-11274
@US1093362
Feature: US1093362 - Search City

  @TC564960
  @Automated
  @Functional
  Scenario: TC564960 - [RL0]
    Given I am a User with access to view or maintain Entity information
    When I want to find an Entity to view or maintain
    Then I can search by City
    And The solution displays Entity records matching my search criteria
    And Results display with best match presented first
