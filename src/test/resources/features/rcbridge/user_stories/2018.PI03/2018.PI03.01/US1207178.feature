# Last updated on 
@MVP
@US1207178
@2018.PI03
@2018.PI03.01
@MVP
@10/1_Physician
@Crosswalk
@Priority_1
@CMD
@F201371
Feature: US1207178 - Upload Crosswalk Template

  @TC615280
  @Manual
  @Functional
  @MVP
  @US1207178
  @2018.PI03
  @2018.PI03.01
  Scenario: TC615280 - [RL1]
    Given a product description update is required
    When an administrator has the information ready and in needed format
    Then the product description crosswalk is updated

  @TC615281
  @Manual
  @Functional
  @MVP
  @US1207178
  @2018.PI03
  @2018.PI03.01
  Scenario: TC615281 - [RL2]
    Given an update file is ready to be uploaded
    When an administrator uploads the file record
    Then the file successfully loads to the database

  @TC519045
  @Manual
  @Functional
  @MVP
  @US1207178
  @2018.PI03
  @2018.PI03.01
  Scenario: TC519045 - Validate Upload Crosswalk Template
    Given an update file is ready to be uploaded
    When an administrator uploads the file record
    Then the file successfully loads to the database

  @TC615279
  @Manual
  @Functional
  @MVP
  @US1207178
  @2018.PI03
  @2018.PI03.01
  Scenario: TC615279 - [RL0]
    Given an update to the product description crosswalk is needed
    When an administrator accesses the crosswalk URL web service
    Then the web service page is available

