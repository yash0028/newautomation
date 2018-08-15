# Last updated on 
@MVP
@US1207419
@2018.PI03
Feature: US1207419 - Store history and audit metadata

  @TC533929
  @Manual
  @Functional
  Scenario: TC533929 - Validate the history of crosswalk file
    Given previous file versions exist
    When an authorized user accesses the screen UI
    Then the previous versions are view-able by the user

  @TC533916
  @Manual
  @Functional
  Scenario: TC533916 - Validate updation of audit log information in database
    Given the application screen is ready
    When a file is uploaded
    Then the previous file record and audit log info is stored in the database

