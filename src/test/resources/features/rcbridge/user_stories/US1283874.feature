# Last updated on 
@kumar,_Sachin
@Alex_M
@US1283874
@2018.PI03
Feature: US1283874 - [Unfinished] Store history and audit metadata

  @TC565215
  @Automated
  @Functional
  Scenario: TC565215 - [RL0]
    Given the application screen is ready
    When a table file is uploaded
    Then the previous file record and audit log info is stored in the database

