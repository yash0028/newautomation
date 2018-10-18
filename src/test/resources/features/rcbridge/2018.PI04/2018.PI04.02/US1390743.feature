# Last updated on 
@US1390743
@2018.PI04
@2018.PI04.02
@MVP
@Madhur
@Priority_1
@CMD
@F218723
@releasePresent
@iterationPast
Feature: US1390743 - [Unfinished] CMD- Update database schema for parital contract master updates

  @TC616425
  @Manual
  @Functional
  @US1390743
  @2018.PI04
  @2018.PI04.02
  Scenario: TC616425 - [RL0]
    # Scenario 1 (NDB partial update):
    Given The NDB contract master update was submitted from a roster
    When The response from NDB indicates not all contracts were successfully added
    Then The following data is available in the table
    # Existing fields
      | Error ID |
      | Transaction ID |
      | Status= pending |
      | Date/timestamp |
      | Input data (market, Fee Schedule, Product code(s) |
      | Contract master ID's |
    # New Fields
      | Product Grouping (can be one or an array) |
      | Product Grouping status |
      | Provider MPIN (can be one or an array) |
      | Provider Name (can be one or an array) |
      | Provider UHC ID (can be one or an array) |
      | Product Name (can be one or an arrary) |
      | System (NDB or COSMOS) |
      | DIV (can be one or an array) |
      | Panel (can be one or an array) |
      | Error message (store the message returned from NDB) |
    # Please see attached spreadsheet for mockup to help in discussions.

