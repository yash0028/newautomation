# Last updated on
@US1285453
@2018.PI03
@2018.PI03.05
@MVP
@10/1_Physician
@Crosswalk
@Priority_1
@CMD
@F201371
@releasePast
@iterationPast
Feature: US1285453 - [Continued]Audit and History the new Product Codes

  @TC616493
  @Manual
  @Functional
  @US1285453
  @2018.PI03
  @2018.PI03.05
  Scenario: TC616493 - [RL0]
    Given the application screen is ready
    When a table file is uploaded
    Then the previous file record and audit log info is stored in the database

