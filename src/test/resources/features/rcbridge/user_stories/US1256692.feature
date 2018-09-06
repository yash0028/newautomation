# Last updated on 
@kumar,_Sachin
@Alex_M
@US1256692
@2018.PI03
Feature: US1256692 - [Continued] Store history and audit metadata

  @TC556665
  @Manual
  @Functional
  Scenario: TC556665 - Validate the history of taxonomy file
    Given previous file versions exist
    When an authorized user accesses the screen UI
    Then the previous versions are view-able by the user

  @TC556658
  @Manual
  @Functional
  Scenario: TC556658 - Validate updation of audit log information in database
    Given the application screen is ready
    When a file is uploaded
    Then the previous file record and audit log info is stored in the database

  @TC564580
  @Automated
  @Functional
  Scenario: TC564580 - [RL0]
    Given the application screen is ready
    When a table file is uploaded
    Then the previous file record and audit log info is stored in the database

  @TC556671
  @Manual
  @Functional
  Scenario: TC556671 - Validate the history of taxonomy file failure
    Given previous file versions exist
    When an authorized user accesses the screen UI
    Then the previous versions are view-able by the user

