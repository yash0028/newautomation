# Last updated on 
@US1396604
@releaseUnknown
@iterationUnknown
Feature: US1396604 - Automate databse import/export- LIQUIBASE WILL COVER THIS, NOT NEEDED

  @TC669307
  @Manual
  @Functional
  Scenario: TC669307 - [RL0]
    Given there is a DB full of data and/or table schemas,
    When the data and/or table schemas need to be elevated to a new environment,
    Then I can invoke a jenkins job to automatically do so

