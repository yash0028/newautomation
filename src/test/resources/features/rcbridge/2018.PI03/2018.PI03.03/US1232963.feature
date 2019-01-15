# Last updated on 
@MVP
@US1232963
@2018.PI03
@2018.PI03.03
@CMD2
@Priority_2
@releasePast
@iterationPast
Feature: US1232963 - Retroactive Reason Codes table

  @TC549318
  @Manual
  @Functional
  @MVP
  Scenario: TC549318 - Retroactive Reason Codes table
    Given a retroactive reason code value table exists
    When a request to the table to return all values is made
    Then the query response returns the list of active codes and code descriptions

  @CLM_UAT
  @TC561356
  @Manual
  @Acceptance
  @MVP
  Scenario: TC561356 - TC-01_Validate Retroactive reasons codes table
    Given a retroactive reason code value table exists
    When a request to the table to return all values is made
    Then the query response returns the list of active codes and code descriptions

  @TC564604
  @Manual
  @Functional
  @MVP
  Scenario: TC564604 - [RL0]
    Given a retroactive reason code value table exists
    When a request to the table to return all values is made
    Then the query response returns the list of active codes and code descriptions

  @TC564605
  @Manual
  @Functional
  @MVP
  Scenario: TC564605 - [RL1]
    # Add Codes as examples once provided
    Given a retroactive reason code value is included in the table
    When an inquiry/verification request for a specific code value is made
    Then the inquiry response/verification response returns the code and code description

  @TC564606
  @Manual
  @Functional
  @MVP
  Scenario: TC564606 - [RL2]
    Given a retroactive reason code value is not included in the table
    When an inquiry/verification request for the specific code value is made
    Then the inquiry response/verification response does not return the code and code description

  @TC549319
  @Manual
  @Functional
  @MVP
  @TC549319
  @Manual
  @Functional
  @MVP
  Scenario: TC549319::1 - get code and description
    # Add Codes as examples once provided
    Given a retroactive reason code value is included in the table
    When an inquiry/verification request for a specific code value is made
    Then the inquiry response/verification response returns the code and code description

  @TC549320
  @Manual
  @Functional
  @MVP
  Scenario: TC549320 - negative case
    Given a retroactive reason code value is not included in the table
    When an inquiry/verification request for the specific code value is made
    Then the inquiry response/verification response does not return the code and code description

