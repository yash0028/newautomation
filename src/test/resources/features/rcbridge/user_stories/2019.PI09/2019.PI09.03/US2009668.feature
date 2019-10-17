# Last updated on 
@US2009668
@2019.PI09
@2019.PI09.03
@releasePresent
@iterationPast
Feature: US2009668 - Search for like transactions within a Mass Actions project

  @TC958745
  @Manual
  @Functional
  Scenario: TC958745 - [RL0]
    Given a Mass Actions project resulted in Type 1 errors
    When a user navigates to the Contract Master Override tab
    And the user clicks on "search"
    Then search fields (fee schedule ID, market product, market number, IPA) will be visible
    And the user can type into any of the fields
    And the user will have an action button to enact the search

  @TC958756
  @Manual
  @Functional
  Scenario: TC958756 - [RL1]
    Given a Mass Actions project resulted in Type 1 errors
    When a user inputs values into any of the search fields
    And matching records are found
    Then the display of Type 1 errors will be limited to those records matching the criteria

  @TC958772
  @Manual
  @Functional
  Scenario: TC958772 - [RL2]
    Given a Mass Actions project resulted in Type 1 errors
    When a user inputs values into any of the search fields
    And NO matching records are found
    Then an onscreen message will be displayed - "No matching records found"

