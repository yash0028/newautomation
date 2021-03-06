# Last updated on 
@US1356979
@releaseUnknown
@iterationUnknown
Feature: US1356979 - New UCM - Market_Products_Excluded

  @TC958743
  @Manual
  @Functional
  Scenario: TC958743 - [RL0]
    Given an Optum contract record is complete
    When information regarding the Market Products Excluded from the contract is needing to be viewed
    Then the Market Products Excluded details are available / accessible to users for viewing

  @TC958760
  @Manual
  @Functional
  Scenario: TC958760 - [RL1]
    Given an Optum contract record is complete
    When information regarding the Market Products Excluded from the contract is needing to be updated
    Then the Market Products excluded details are NOT available / accessible to users for updating
    And users can view (only) the Market Products Excluded information

