# Last updated on 2018-06-15T14:06:33.514Z
@MVP
@Plus
@Priority_1
Feature: F154296 - Perform Basic Search

  @MVP
  @EXARI-11274
  @2018.PI03
  Scenario: US1093314
    Given I am a User with access to view or maintain Entity information
    When I want to find an Entity to view or maintain
    Then I can search by Entity Type
    And the solution displays Entity records matching my search criteria
    And Results display with best match presented first

  @MVP
  @EXARI-11274
  @2018.PI03
  Scenario: US1093312
    Given I am a User with access to view or maintain Entity information
    When I want to find an Entity to view or maintain
    Then I can search by Entity Name
    And the solution displays Entity records matching my search criteria
    And Results display with best match presented first

  @MVP
  @EXARI-11274
  @2018.PI03
  Scenario: US1093318
    Given I am a User with access to view or maintain Entity information
    When I want to find an Entity to view or maintain
    Then I can search by Alternate Name
    And the solution displays Entity records matching my search criteria
    And Results display with best match presented first

  @MVP
  @2018.PI03
  Scenario: US948350
    Given I am a User with access to view or maintain Entity information
    When I want to find an Entity to view or maintain
    Then I can search using multiple data points
    And the solution displays Entity records matching my search criteria
    And Results display with best match presented first

  @MVP
  @EXARI-11274
  @2018.PI03
  Scenario: US1093316
    Given I am a User with access to view or maintain Entity information
    When I want to find an Entity to view or maintain
    Then I can search by Identifier
    And the solution displays Entity records matching my search criteria
    And Results display with best match presented first

