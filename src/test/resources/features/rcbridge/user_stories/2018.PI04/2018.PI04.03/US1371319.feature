# Last updated on 
@A_UI_Story
@US1371319
@2018.PI04
@2018.PI04.03
@releasePast
@iterationPast
Feature: US1371319 - Download CLM Rule Table

  @TC603985
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC603985 - [RL0]
    Given a user needs to view rule details
    When a user needs to view the rules within the database
    Then a UI is available to the user for downloading

  @TC603986
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC603986 - [RL1]
    Given more than one CLM Rules Table record exists in the database
    When access to a previous record version is needed
    Then the previous record versions are available

  @TC603987
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC603987 - [RL2]
    Given the existence of a web UI
    When an authorized user access the URL
    Then the web UI for download is available
    ###

