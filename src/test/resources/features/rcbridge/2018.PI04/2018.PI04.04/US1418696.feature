# Last updated on 
@US1418696
@2018.PI04
@2018.PI04.04
@MVP
@10/1_Physician
@Priority_1
@CMD
@F237213
@releasePresent
@iterationPresent
Feature: US1418696 - Search - based on Contract Dates (effstart/effend date)

  @TC629924
  @Manual
  @Functional
  @US1418696
  @2018.PI04
  @2018.PI04.04
  Scenario: TC629924 - [RL2]
    Given a user enters a valid search input
    When the user selects enter or search
    Then the service searches records that contain the date inputted by the user
    And the search response displayed matching records in the UI

  @TC629927
  @Manual
  @Functional
  @US1418696
  @2018.PI04
  @2018.PI04.04
  Scenario: TC629927 - [RL5]
    Given the service searches records that contain the date inputted by the user
    When no records are found
    Then a message generated 'NO RECORDS FOUND' and displayed through the UI page

  @TC629922
  @Manual
  @Functional
  @US1418696
  @2018.PI04
  @2018.PI04.04
  Scenario: TC629922 - [RL0]
    Given a user needs to search the CMD database
    When the user enters MM/DD/YYYY in the contract effstart field in the UI
    Then the search parameters are valid

  @TC629923
  @Manual
  @Functional
  @US1418696
  @2018.PI04
  @2018.PI04.04
  Scenario: TC629923 - [RL1]
    Given a user needs to search the CMD database
    When the user enters other than MM/DD/YYYY
    Then the search parameters are invalid
    And a message displayed stating 'SEARCH DATE FORMAT MUST BE MM/DD/YYYY'

  @TC629928
  @Manual
  @Functional
  @US1418696
  @2018.PI04
  @2018.PI04.04
  Scenario: TC629928 - [RL6]
    Given the service searches records that contain the date inputted by the user
    When multiple records matching the criteria are found
    Then the first 10 records are displayed
    And a message generated 'MULTIPLE RECORDS FOUND' and displayed through the UI page

  @TC629925
  @Manual
  @Functional
  @US1418696
  @2018.PI04
  @2018.PI04.04
  Scenario: TC629925 - [RL3]
    Given a user enters an INVALID search input
    When the user selects enter or search
    Then the service does not start to searches records that contain the input by the user
    And an error message generated and displayed in the UI

  @TC629926
  @Manual
  @Functional
  @US1418696
  @2018.PI04
  @2018.PI04.04
  Scenario: TC629926 - [RL4]
    Given the service searches records that contain the date inputted by the user
    When a single record is found
    Then the record details are displayed to the user

