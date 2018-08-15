# Last updated on 
@F196735
Feature: F196735 - Exari EM - Search fields

  @EXARI-11274
  @US1093362
  Scenario: US1093362 - Search City
    Given I am a User with access to view or maintain Entity information
    When I want to find an Entity to view or maintain
    Then I can search by City
    And The solution displays Entity records matching my search criteria
    And Results display with best match presented first

  @EXARI-11274
  @US1093364
  Scenario: US1093364 - Search Postal Code
    Given I am a User with access to view or maintain Entity information
    When I want to find an Entity to view or maintain
    Then I can search by Postal Code
    And The solution displays Entity records matching my search criteria
    And Results display with best match presented first

  @EXARI-11274
  @US1093363
  Scenario: US1093363 - Search State
    Given I am a User with access to view or maintain Entity information
    When I want to find an Entity to view or maintain
    Then I can search by State
    And The solution displays Entity records matching my search criteria
    And Results display with best match presented first

  @EXARI-11274
  @US1093322
  Scenario: US1093322 - Search Street Address
    Given I am a User with access to view or maintain Entity information
    When I want to find an Entity to view or maintain
    Then I can search by Street Address
    And The solution displays Entity records matching my search criteria
    And Results display with best match presented first

  @EXARI-11273
  @US922849
  Scenario: US922849 - View Address Time Lining History
    Given I am a User with access to view and maintain Entity information
    When I want to view address history for an Entity
    Then I can view previous addresses
    And I can view the current addresses
    And I can view the User who performed each address change
    And I can view the time and date on which the User performed the address change

