# Last updated on 
@US1947250
@2019.PI09
@2019.PI09.02
@releasePresent
@iterationPast
Feature: US1947250 - UI/UX:  Fee Schedule ID is visible to users in CMD UI when contract master input is required

  @TC958738
  @Manual
  @Functional
  Scenario: TC958738 - [RL0]
    Given a transaction has resulted in a Type 1 error
    When the user clicks to view/resolve the error
    Then the data used to perform the search is displayed on the screen
    And that data includes market number, fee schedule ID, IPA, product code

