# Last updated on
@A_UI_Story
@US1371319
@2018.PI04
@2018.PI04.03
@MVP
@10/1_Physician
@Priority_1
@CMD
@Amrutha
@releasePresent
@iterationPast
Feature: US1371319 - Download CLM Rule Table

  @TC603987
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC603987 - [RL2]
    Given the existence of a web UI
    When an authorized user access the URL
    Then the web UI for download is available
    ###

  @TC603986
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC603986 - [RL1]
    Given more than one CLM Rules Table record exists in the database
    When access to a previous record version is needed
    Then the previous record versions are available

