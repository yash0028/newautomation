# Last updated on 
@MVP
@US1207178
@2018.PI03
@2018.PI03.01
Feature: US1207178 - Upload Crosswalk Template

  @TC565252
  @Automated
  @Functional
  Scenario: TC565252 - [RL2]
    Given an update file is ready to be uploaded
    When an administrator uploads the file record
    Then the file successfully loads to the database

  @TC565251
  @Automated
  @Functional
  Scenario: TC565251 - [RL1]
    Given a product description update is required
    When an administrator has the information ready and in needed format
    Then the product description crosswalk is updated

  @TC519045
  @Manual
  @Functional
  Scenario: TC519045 - Validate Upload Crosswalk Template
    Given an update file is ready to be uploaded
    When an administrator uploads the file record
    Then the file successfully loads to the database

  @TC565250
  @Automated
  @Functional
  Scenario: TC565250 - [RL0]
    Given an update to the product description crosswalk is needed
    When an administrator accesses the crosswalk URL web service
    Then the web service page is available

