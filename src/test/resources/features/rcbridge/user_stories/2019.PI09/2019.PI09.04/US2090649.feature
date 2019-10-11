# Last updated on 
@US2090649
@2019.PI09
@2019.PI09.04
@releasePresent
@iterationFuture
Feature: US2090649 - UI/UX: Create the Upload/Download functionality for the Type 2 Message Catalog Crosswalk table

  @TC1015068
  @Manual
  @Functional
  Scenario: TC1015068 - [RL0]
    Given the TYPE 2 ERROR RESOLUTION TABLE service is up and running
    When A new spreadsheet is uploaded and stored in the database
    And The import is processed successfully
    Then The existing data is deleted
    And The content of spreadsheet is parsed and stored in a database table
    And The database is updated to indicate that the spreadsheet was processed successfully

  @TC1013516
  @Manual
  @Functional
  Scenario: TC1013516 - [RL1]
    Given theTYPE 2 ERROR RESOLUTION TABLE service is up and running
    When A new spreadsheet is uploaded and stored in the database
    And The import fails
    Then The existing data is not deleted and not updated
    And The database is updated to indicate that the spreadsheet import failed
    And all messages of the reason for the failure are displayed in the UI

  @TC1013517
  @Manual
  @Functional
  Scenario: TC1013517 - [RL2]
    Given more than one TYPE 2 ERROR RESOLUTION TABLE record exists in the database
    When access to a previous record version is needed
    Then the previous record versions are available

  @TC1013518
  @Manual
  @Functional
  Scenario: TC1013518 - [RL3]
    Given an update to the current version of the TYPE 2 ERROR RESOLUTION TABLE is needed
    When an administrator downloads a copy of the table template
    Then the table template is made available to the administrator
    ###

