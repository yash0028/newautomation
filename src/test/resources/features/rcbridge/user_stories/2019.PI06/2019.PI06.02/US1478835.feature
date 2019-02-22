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
    When the user provides at least 7 characters of Legal Name
    Then the query searches Legal Name column for records that contain the text character input
    And returns the matched table record data

  @TC672219
  @Manual
  @Functional
  @CMD
  Scenario: TC672219 - [RL1]
    Given a user needs to query the table
    When the user provides at least 3 characters of Entity Abbrev Code
    Then the query searches Entity Abbrev Identification Code column for records that contain the input
    And returns the matched table records data

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

