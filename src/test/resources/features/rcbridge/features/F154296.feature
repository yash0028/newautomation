# Last updated on 
@MVP
@Plus
@Priority_1
@F154296
Feature: F154296 - Exari EM - Perform Basic Search

  @MVP
  @CLM_UAT
  @EXARI-11274
  @US1093314
  @2018.PI03
  Scenario: US1093314 - Search Entity Type
    Given I am a User with access to view or maintain Entity information
    When I want to find an Entity to view or maintain
    Then I can search by Entity Type
    And the solution displays Entity records matching my search criteria
    And Results display with best match presented first

  @MVP
  @CLM_UAT
  @EXARI-11274
  @US1093312
  @2018.PI03
  Scenario: US1093312 - Search Entity Name
    Given I am a User with access to view or maintain Entity information
    When I want to find an Entity to view or maintain
    Then I can search by Entity Name
    And the solution displays Entity records matching my search criteria
    And Results display with best match presented first

  @MVP
  @CLM_UAT
  @EXARI-11274
  @US1093318
  @2018.PI03
  Scenario: US1093318 - Search Alternate Name
    Given I am a User with access to view or maintain Entity information
    When I want to find an Entity to view or maintain
    Then I can search by Alternate Name
    And the solution displays Entity records matching my search criteria
    And Results display with best match presented first

  @MVP
  @CLM_UAT
  @US948350
  @2018.PI03
  Scenario: US948350 - Search Multiple Criteria
    Given I am a User with access to view or maintain Entity information
    When I want to find an Entity to view or maintain
    Then I can search using multiple data points
    And the solution displays Entity records matching my search criteria
    And Results display with best match presented first

  @MVP
  @CLM_UAT
  @EXARI-11274
  @US1093316
  @2018.PI03
  Scenario: US1093316 - Search Identifier
    Given I am a User with access to view or maintain Entity information
    When I want to find an Entity to view or maintain
    Then I can search by Identifier
    And the solution displays Entity records matching my search criteria
    And Results display with best match presented first

