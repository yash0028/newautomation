# Last updated on 
@US1425332
@2018.PI05
@2018.PI05.01
@MVP
@10/1_Physician
@Priority_1
@CMD
@releaseFuture
@iterationFuture
Feature: US1425332 - Search via CMD UI (Search by Date)

  @TC634354
  @Manual
  @Functional
  Scenario: TC634354 - [RL2]
    Given a user needs to search the CMD database
    When the user enters MM/DD/YYYY in the contract name field in the UI
    Then the search parameters are valid

  @TC634358
  @Manual
  @Functional
  Scenario: TC634358 - [RL3]
    Given a user needs to search the CMD database
    When the user enters other than MM/DD/YYYY
    Then the search parameters are invalid
    And a message displayed stating 'SEARCH DATE FORMAT MUST BE MM/DD/YYYY'

  @TC634363
  @Manual
  @Functional
  Scenario: TC634363 - [RL4]
    Given a user enters a valid search input
    When the user selects enter or search
    Then the service searches records that contain the date inputted by the user
    And the search response displayed matching records in the UI

  @TC634368
  @Manual
  @Functional
  Scenario: TC634368 - [RL5]
    Given a user enters an INVALID search input
    When the user selects enter or search
    Then the service does not start to searches records that contain the input by the user
    And an error message generated and displayed in the UI

  @TC634370
  @Manual
  @Functional
  Scenario: TC634370 - [RL6]
    Given the service searches records that contain the date inputted by the user
    When a single record is found
    Then the record details are displayed to the user

  @TC634371
  @Manual
  @Functional
  Scenario: TC634371 - [RL7]
    Given the service searches records that contain the date inputted by the user
    When no records are found
    Then a message generated 'NO RECORDS FOUND' and displayed through the UI page

  @TC634372
  @Manual
  @Functional
  Scenario: TC634372 - [RL8]
    Given the service searches records that contain the date inputted by the user
    When multiple records matching the criteria are found
    Then the first 10 records are displayed
    And a message generated 'MULTIPLE RECORDS FOUND' and displayed through the UI page

