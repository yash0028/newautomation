# Last updated on 
@US1285453
Feature: US1285453 - [Continued]Audit and History the new Product Codes

  @TC565172
  @Automated
  @Functional
  Scenario: TC565172 - [RL0]
    Given the application screen is ready
    When a table file is uploaded
    Then the previous file record and audit log info is stored in the database

