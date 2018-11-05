# Last updated on 
@US1391237
@2018.PI04
@2018.PI04.04
@MVP
@10/1_Physician
@Priority_1
@CMD
@F237213
@releasePresent
@iterationPresent
Feature: US1391237 - Search - based on Contract Market, State or Region

  @TC629918
  @Manual
  @Functional
  @US1391237
  @2018.PI04
  @2018.PI04.04
  Scenario: TC629918 - [RL3]
    Given a user enters an INVALID search input
    When the user selects enter or search
    Then the service does not start to searches records that contain the text inputted by the user
    And an error message generated and displayed in the UI

  @TC629915
  @Manual
  @Functional
  @US1391237
  @2018.PI04
  @2018.PI04.04
  Scenario: TC629915 - [RL0]
    Given a user needs to search the CMD database
    When the user enters a valid market number in the UI
    Then the search parameters are valid

  @TC629920
  @Manual
  @Functional
  @US1391237
  @2018.PI04
  @2018.PI04.04
  Scenario: TC629920 - [RL5]
    Given the service searches records that contain the text inputted by the user
    When no records are found
    Then a message generated 'NO RECORDS FOUND' and displayed through the UI page

  @TC629919
  @Manual
  @Functional
  @US1391237
  @2018.PI04
  @2018.PI04.04
  Scenario: TC629919 - [RL4]
    Given the service searches records that contain the text inputted by the user
    When a single record is found
    Then the record details are displayed to the user

  @TC629917
  @Manual
  @Functional
  @US1391237
  @2018.PI04
  @2018.PI04.04
  Scenario: TC629917 - [RL2]
    Given a user enters a valid search input
    When the user selects enter or search
    Then the service searches records that contain the inputted by the user
    And the search response displayed matching records in the UI

  @TC629916
  @Manual
  @Functional
  @US1391237
  @2018.PI04
  @2018.PI04.04
  Scenario: TC629916 - [RL1]
    Given a user needs to search the CMD database
    When the user enters other than numbers
    Then the search parameters are invalid
    And a message displayed stating 'SEARCH MUST BE NUMERIC'

  @TC629921
  @Manual
  @Functional
  @US1391237
  @2018.PI04
  @2018.PI04.04
  Scenario: TC629921 - [RL6]
    Given the service searches records that contain the text inputted by the user
    When multiple records matching the criteria are found
    Then the first 10 records are displayed
    And a message generated 'MULTIPLE RECORDS FOUND' and displayed through the UI page

