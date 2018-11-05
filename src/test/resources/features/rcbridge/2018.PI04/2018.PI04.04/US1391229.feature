# Last updated on 
@US1391229
@2018.PI04
@2018.PI04.04
@MVP
@10/1_Physician
@Priority_1
@CMD
@F237213
@releasePresent
@iterationPresent
Feature: US1391229 - Search - based on Contract Dates (transaction date)

  @TC629941
  @Manual
  @Functional
  @US1391229
  @2018.PI04
  @2018.PI04.04
  Scenario: TC629941 - [RL4]
    Given the service searches records that contain the date inputted by the user
    When a single record is found
    Then the record details are displayed to the user

  @TC629942
  @Manual
  @Functional
  @US1391229
  @2018.PI04
  @2018.PI04.04
  Scenario: TC629942 - [RL5]
    Given the service searches records that contain the date inputted by the user
    When no records are found
    Then a message generated 'NO RECORDS FOUND' and displayed through the UI page

  @TC629937
  @Manual
  @Functional
  @US1391229
  @2018.PI04
  @2018.PI04.04
  Scenario: TC629937 - [RL0]
    Given a user needs to search the CMD database
    When the user enters MM/DD/YYYY in the contract name field in the UI
    Then the search parameters are valid

  @TC629939
  @Manual
  @Functional
  @US1391229
  @2018.PI04
  @2018.PI04.04
  Scenario: TC629939 - [RL2]
    Given a user enters a valid search input
    When the user selects enter or search
    Then the service searches records that contain the date inputted by the user
    And the search response displayed matching records in the UI

  @TC629938
  @Manual
  @Functional
  @US1391229
  @2018.PI04
  @2018.PI04.04
  Scenario: TC629938 - [RL1]
    Given a user needs to search the CMD database
    When the user enters other than MM/DD/YYYY
    Then the search parameters are invalid
    And a message displayed stating 'SEARCH DATE FORMAT MUST BE MM/DD/YYYY'

  @TC629943
  @Manual
  @Functional
  @US1391229
  @2018.PI04
  @2018.PI04.04
  Scenario: TC629943 - [RL6]
    Given the service searches records that contain the date inputted by the user
    When multiple records matching the criteria are found
    Then the first 10 records are displayed
    And a message generated 'MULTIPLE RECORDS FOUND' and displayed through the UI page

  @TC629940
  @Manual
  @Functional
  @US1391229
  @2018.PI04
  @2018.PI04.04
  Scenario: TC629940 - [RL3]
    Given a user enters an INVALID search input
    When the user selects enter or search
    Then the service does not start to searches records that contain the input by the user
    And an error message generated and displayed in the UI

