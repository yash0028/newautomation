# Last updated on 
@US1412876
@2018.PI04
@2018.PI04.04
@MVP
@10/1_Physician
@Priority_1
@CMD
@releasePast
@iterationPast
Feature: US1412876 - Search via CMD UI (Landing Page)

  @TC631482
  @Manual
  @Functional
  Scenario: TC631482 - [RL0]
    Given an authorized user needs to search the CMD database
    When the user accesses the CMD default landing web page UI
    Then a search field is available to the user in the CMD default landing web page UI

  @TC631443
  @Manual
  @Functional
  Scenario: TC631443 - [RL10]
    Given the service searches records that contain the date inputted by the user
    When a single record is found
    Then the record details are displayed to the user

  @TC631444
  @Manual
  @Functional
  Scenario: TC631444 - [RL11]
    Given the service searches records that contain the date inputted by the user
    When no records are found
    Then a message generated 'NO RECORDS FOUND' and displayed through the UI page

  @TC631445
  @Manual
  @Functional
  Scenario: TC631445 - [RL12]
    Given the service searches records that contain the date inputted by the user
    When multiple records matching the criteria are found
    Then the first 10 records are displayed
    And a message generated 'MULTIPLE RECORDS FOUND' and displayed through the UI page

  @TC631488
  @Manual
  @Functional
  Scenario: TC631488 - [RL14]
    Given a user needs to search the CMD database
    When the user enters a valid market number in the UI
    Then the search parameters are valid

  @TC631489
  @Manual
  @Functional
  Scenario: TC631489 - [RL15]
    Given a user needs to search the CMD database
    When the user enters other than numbers
    Then the search parameters are invalid
    And a message displayed stating 'SEARCH MUST BE NUMERIC'

  @TC631447
  @Manual
  @Functional
  Scenario: TC631447 - [RL16]
    Given a user enters a valid search input
    When the user selects enter or search
    Then the service searches records that contain the inputted by the user
    And the search response displayed matching records in the UI

  @TC631449
  @Manual
  @Functional
  Scenario: TC631449 - [RL17]
    Given a user enters an INVALID search input
    When the user selects enter or search
    Then the service does not start to searches records that contain the text inputted by the user
    And an error message generated and displayed in the UI

  @TC631450
  @Manual
  @Functional
  Scenario: TC631450 - [RL18]
    Given the service searches records that contain the text inputted by the user
    When a single record is found
    Then the record details are displayed to the user

  @TC631451
  @Manual
  @Functional
  Scenario: TC631451 - [RL19]
    Given the service searches records that contain the text inputted by the user
    When no records are found
    Then a message generated 'NO RECORDS FOUND' and displayed through the UI page

  @TC631483
  @Manual
  @Functional
  Scenario: TC631483 - [RL1]
    Given a user accesses the CMD Action Required web page UI
    When the user needs to search the CMD database
    Then a search field is available to the user in the CMD Action Require web page UI

  @TC631452
  @Manual
  @Functional
  Scenario: TC631452 - [RL20]
    Given the service searches records that contain the text inputted by the user
    When multiple records matching the criteria are found
    Then the first 10 records are displayed
    And a message generated 'MULTIPLE RECORDS FOUND' and displayed through the UI page

  @TC631454
  @Manual
  @Functional
  Scenario: TC631454 - [RL22]
    Given a user needs to search the CMD database
    When the user enters text in the contract name field in the UI
    Then the search parameters are valid

  @TC631490
  @Manual
  @Functional
  Scenario: TC631490 - [RL23]
    Given a user needs to search the CMD database
    When the user enters special characters
    Then the search parameters are invalid
    And a message displayed stating 'SEARCH CAN NOT CONTAIN SPECIAL CHARACTERS'

  @TC631491
  @Manual
  @Functional
  Scenario: TC631491 - [RL24]
    Given a user needs to search the CMD database
    When the user enters less than 10 characters
    Then the search parameters are invalid
    And a message displayed stating 'SEARCH MUST BE AT LEAST 10 CHARACTERS'

  @TC631455
  @Manual
  @Functional
  Scenario: TC631455 - [RL25]
    Given a user enters a valid search input
    When the user selects enter or search
    Then the service searches records that contain the text inputted by the user
    And the search response displayed matching records in the UI

  @TC631456
  @Manual
  @Functional
  Scenario: TC631456 - [RL26]
    Given a user enters an INVALID search input
    When the user selects enter or search
    Then the service does not start to searches records that contain the text inputted by the user
    And an error message generated and displayed in the UI

  @TC631457
  @Manual
  @Functional
  Scenario: TC631457 - [RL27]
    Given the service searches records that contain the text inputted by the user
    When a single record is found
    Then the record details are displayed to the user

  @TC631458
  @Manual
  @Functional
  Scenario: TC631458 - [RL28]
    Given the service searches records that contain the text inputted by the user
    When no records are found
    Then a message generated 'NO RECORDS FOUND' and displayed through the UI page

  @TC631459
  @Manual
  @Functional
  Scenario: TC631459 - [RL29]
    Given the service searches records that contain the text inputted by the user
    When multiple records matching the criteria are found
    Then the first 10 records are displayed
    And a message generated 'MULTIPLE RECORDS FOUND' and displayed through the UI page

  @TC631484
  @Manual
  @Functional
  Scenario: TC631484 - [RL2]
    Given a user accesses the CMD In Progress web page UI
    When the user needs to search the CMD database
    Then a search field is available to the user in the CMD In Progress web page UI

  @TC631461
  @Manual
  @Functional
  Scenario: TC631461 - [RL31]
    Given a user needs to search the CMD database
    When the user enters a valid contract number in the UI
    Then the service responds with available database record details
    And the information rendered through the UI page

  @TC631462
  @Manual
  @Functional
  Scenario: TC631462 - [RL32]
    Given a user needs to search the CMD database
    When the user enters an invalid contract number in the UI
    Then the service DOES NOT responds with database record details
    And a message generated 'NO RECORDS FOUND' and displayed through the UI page

  @TC631485
  @Manual
  @Functional
  Scenario: TC631485 - [RL3]
    Given a user accesses the CMD Errors web page UI
    When the user needs to search the CMD database
    Then a search field is available to the user in the CMD Errors web page UI

  @TC631486
  @Manual
  @Functional
  Scenario: TC631486 - [RL4]
    Given a user accesses the CMD Completed web page UI
    When the user needs to search the CMD database
    Then a search field is available to the user in the CMD Completed web page UI

  @TC631487
  @Manual
  @Functional
  Scenario: TC631487 - [RL6]
    Given a user needs to search the CMD database
    When the user enters MM/DD/YYYY in the contract name field in the UI
    Then the search parameters are valid

  @TC631440
  @Manual
  @Functional
  Scenario: TC631440 - [RL7]
    Given a user needs to search the CMD database
    When the user enters other than MM/DD/YYYY
    Then the search parameters are invalid
    And a message displayed stating 'SEARCH DATE FORMAT MUST BE MM/DD/YYYY'

  @TC631441
  @Manual
  @Functional
  Scenario: TC631441 - [RL8]
    Given a user enters a valid search input
    When the user selects enter or search
    Then the service searches records that contain the date inputted by the user
    And the search response displayed matching records in the UI

  @TC631442
  @Manual
  @Functional
  Scenario: TC631442 - [RL9]
    Given a user enters an INVALID search input
    When the user selects enter or search
    Then the service does not start to searches records that contain the input by the user
    And an error message generated and displayed in the UI

