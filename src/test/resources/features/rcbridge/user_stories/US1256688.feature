# Last updated on 
@US1256688
@2018.PI03
Feature: US1256688 - Upload Table template

  @TC565163
  @Automated
  @Functional
  Scenario: TC565163 - [RL0]
    Given an update to the table is needed
    When an administrator accesses the table URL web service
    Then the web service page is available

  @TC565164
  @Automated
  @Functional
  Scenario: TC565164 - [RL1]
    Given an update of a record within the table is required
    When an administrator has the information ready to record in the table
    Then the table is updated

  @TC565165
  @Automated
  @Functional
  Scenario: TC565165 - [RL2]
    Given an updated table file is ready to be uploaded
    When an administrator uploads the table file record
    Then the file successfully loads to the database

