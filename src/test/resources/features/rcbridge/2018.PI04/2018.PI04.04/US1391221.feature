# Last updated on 
@US1391221
@2018.PI04
@2018.PI04.04
@MVP
@10/1_Physician
@Priority_1
@CMD
@F237213
@releasePresent
@iterationPresent
Feature: US1391221 - Search - Based on Contract Name

  @TC629932
  @Manual
  @Functional
  @US1391221
  @2018.PI04
  @2018.PI04.04
  Scenario: TC629932 - [RL3]
    Given a user enters a valid search input
    When the user selects enter or search
    Then the service searches records that contain the text inputted by the user
    And the search response displayed matching records in the UI

  @TC629930
  @Manual
  @Functional
  @US1391221
  @2018.PI04
  @2018.PI04.04
  Scenario: TC629930 - [RL1]
    Given a user needs to search the CMD database
    When the user enters special characters
    Then the search parameters are invalid
    And a message displayed stating 'SEARCH CAN NOT CONTAIN SPECIAL CHARACTERS'

  @TC629934
  @Manual
  @Functional
  @US1391221
  @2018.PI04
  @2018.PI04.04
  Scenario: TC629934 - [RL5]
    Given the service searches records that contain the text inputted by the user
    When a single record is found
    Then the record details are displayed to the user

  @TC629933
  @Manual
  @Functional
  @US1391221
  @2018.PI04
  @2018.PI04.04
  Scenario: TC629933 - [RL4]
    Given a user enters an INVALID search input
    When the user selects enter or search
    Then the service does not start to searches records that contain the text inputted by the user
    And an error message generated and displayed in the UI

  @TC629935
  @Manual
  @Functional
  @US1391221
  @2018.PI04
  @2018.PI04.04
  Scenario: TC629935 - [RL6]
    Given the service searches records that contain the text inputted by the user
    When no records are found
    Then a message generated 'NO RECORDS FOUND' and displayed through the UI page

  @TC629929
  @Manual
  @Functional
  @US1391221
  @2018.PI04
  @2018.PI04.04
  Scenario: TC629929 - [RL0]
    Given a user needs to search the CMD database
    When the user enters text in the contract name field in the UI
    Then the search parameters are valid

  @TC629936
  @Manual
  @Functional
  @US1391221
  @2018.PI04
  @2018.PI04.04
  Scenario: TC629936 - [RL7]
    Given the service searches records that contain the text inputted by the user
    When multiple records matching the criteria are found
    Then the first 10 records are displayed
    And a message generated 'MULTIPLE RECORDS FOUND' and displayed through the UI page

  @TC629931
  @Manual
  @Functional
  @US1391221
  @2018.PI04
  @2018.PI04.04
  Scenario: TC629931 - [RL2]
    Given a user needs to search the CMD database
    When the user enters less than 10 characters
    Then the search parameters are invalid
    And a message displayed stating 'SEARCH MUST BE AT LEAST 10 CHARACTERS'

