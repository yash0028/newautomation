# Last updated on 
@MVP
@US1232963
@2018.PI03
Feature: US1232963 - Retroactive Reason Codes table

  @TC549318
  @Automated
  @Functional
  Scenario: TC549318 - Retroactive Reason Codes table
    Given a retroactive reason code value table exists
    When a request to the table to return all values is made
    Then the query response returns the list of active codes and code descriptions

  @TC549320
  @Automated
  @Functional
  Scenario: TC549320 - negative case
    Given a retroactive reason code value is not included in the table
    When an inquiry/verification request for the specific code value is made
    Then the inquiry response/verification response does not return the code and code description

