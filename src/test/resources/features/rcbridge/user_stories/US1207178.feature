# Last updated on 
@MVP
@US1207178
@2018.PI03
Feature: US1207178 - Upload Crosswalk Template

  @TC519045
  @Manual
  @Functional
  Scenario: TC519045 - Validate Upload Crosswalk Template
    Given an update file is ready to be uploaded
    When an administrator uploads the file record
    Then the file successfully loads to the database

