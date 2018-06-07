# Last updated on 2018-06-07T05:26:00.667Z
@MVP
@Plus
@Priority_1
Feature: F154296 - Perform Basic Search

  @EXARI-10530
  Scenario: US1093362
    Given I am a User with access to view or maintain Entity information
    When I want to find an Entity to view or maintain
    Then I can search by City
    Then And The solution displays Entity records matching my search criteria
    Then And Results display with best match presented first

  @EXARI-10530
  Scenario: US1093364
    Given I am a User with access to view or maintain Entity information
    When I want to find an Entity to view or maintain
    Then I can search by Postal Code
    Then And The solution displays Entity records matching my search criteria
    Then And Results display with best match presented first

  @EXARI-10530
  Scenario: US1093363
    Given I am a User with access to view or maintain Entity information
    When I want to find an Entity to view or maintain
    Then I can search by State
    Then And The solution displays Entity records matching my search criteria
    Then And Results display with best match presented first

  @EXARI-10530
  Scenario: US1093314
    Given I am a User with access to view or maintain Entity information
    When I want to find an Entity to view or maintain
    Then I can search by Entity Type
    Then And The solution displays Entity records matching my search criteria
    Then And Results display with best match presented first

  @EXARI-10530
  Scenario: US1093322
    Given I am a User with access to view or maintain Entity information
    When I want to find an Entity to view or maintain
    Then I can search by Street Address
    Then And The solution displays Entity records matching my search criteria
    Then And Results display with best match presented first

  @EXARI-10530
  Scenario: US1093312
    Given I am a User with access to view or maintain Entity information
    When I want to find an Entity to view or maintain
    Then I can search by Entity Name
    Then And The solution displays Entity records matching my search criteria
    Then And Results display with best match presented first

  @EXARI-10530
  Scenario: US1093318
    Given I am a User with access to view or maintain Entity information
    When I want to find an Entity to view or maintain
    Then I can search by Alternate Name
    Then And The solution displays Entity records matching my search criteria
    Then And Results display with best match presented first

  @EXARI-10530
  Scenario: US948350
    Given I am a User with access to view or maintain Entity information
    When I want to find an Entity to view or maintain
    Then I can search using multiple data points
    Then And The solution displays Entity records matching my search criteria
    Then And Results display with best match presented first

  @EXARI-10530
  Scenario: US1093316
    Given I am a User with access to view or maintain Entity information
    When I want to find an Entity to view or maintain
    Then I can search by Identifier
    Then And The solution displays Entity records matching my search criteria
    Then And Results display with best match presented first

