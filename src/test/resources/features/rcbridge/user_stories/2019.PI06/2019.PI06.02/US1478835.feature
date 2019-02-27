# Last updated on 
@CMD
@US1478835
@2019.PI06
@2019.PI06.02
@releasePresent
@iterationPresent
Feature: US1478835 - CMD UTILITY - Our Legal Entities list and microservice

  @TC672208
  @Manual
  @Functional
  @CMD
  Scenario: TC672208 - [RL0]
    Given a user needs to query the table
    When the user requests for legal entity data
    Then the query returns entire table data.

  @RC_unlinked
  @TC672226
  @Manual
  @Functional
  @CMD
  Scenario: TC672226 - [RL2]
    Given a user needs to query the table
    When the user DOES NOT provide at least 7 characters of Legal Name
    And the user DOES NOT provide a Entity Abbreviation code
    Then the service does not initiate a query
    And returns a message of 'LEGAL NAME OR ENTITY ABBREV CODE REQUIRED''

