# Last updated on 
@MVP
@US1207419
@2018.PI03
@2018.PI03.02
@MVP
@10/1_Physician
@Crosswalk
@Priority_1
@CMD
@F201371
Feature: US1207419 - Store history and audit metadata

  @TC533929
  @Manual
  @Functional
  @MVP
  @US1207419
  @2018.PI03
  @2018.PI03.02
  Scenario: TC533929 - Validate the history of crosswalk file
    Given previous file versions exist
    When an authorized user accesses the screen UI
    Then the previous versions are view-able by the user

  @TC565953
  @Automated
  @Functional
  @MVP
  @US1207419
  @2018.PI03
  @2018.PI03.02
  Scenario: TC565953 - [RL1]
    Given previous file versions exist
    When an authorized user accesses the screen UI
    Then the previous versions are view-able by the user

  @TC565952
  @Automated
  @Functional
  @MVP
  @US1207419
  @2018.PI03
  @2018.PI03.02
  Scenario: TC565952 - [RL0]
    Given the application screen is ready
    When a file is uploaded
    Then the previous file record and audit log info is stored in the database

  @TC533916
  @Manual
  @Functional
  @MVP
  @US1207419
  @2018.PI03
  @2018.PI03.02
  Scenario: TC533916 - Validate updation of audit log information in database
    Given the application screen is ready
    When a file is uploaded
    Then the previous file record and audit log info is stored in the database

