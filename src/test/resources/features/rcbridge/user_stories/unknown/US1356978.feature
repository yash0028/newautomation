# Last updated on 
@US1356978
@releaseUnknown
@iterationUnknown
Feature: US1356978 - New UCM - Market Products_Included

  @TC958734
  @Manual
  @Functional
  Scenario: TC958734 - [RL0]
    Given an Exari contract record exists and is valid
    When the contract has completed downstream system configuration/ processing
    Then an Optum contract record is complete
    And the Optum contract record includes Market Product included details
    And the Optum contract record includes Market Product Excluded details

  @TC958757
  @Manual
  @Functional
  Scenario: TC958757 - [RL1]
    Given an Exari contract record exists and is valid
    When the contract has NOT completed downstream system configuration/ processing
    Then an Optum contract record is NOT complete

  @TC958769
  @Manual
  @Functional
  Scenario: TC958769 - [RL2]
    Given an Optum contract record is complete
    When information regarding the Market Products included in the contract is needing to be viewed
    Then the Market Products included details are available / accessible to users for viewing

  @TC958782
  @Manual
  @Functional
  Scenario: TC958782 - [RL3]
    Given an Optum contract record is complete
    When information regarding the Market Products included in the contract is needing to be updated
    Then the Market Products included details are NOT available / accessible to users for updating
    And users can view (only) the Market Products Included information

