# Last updated on 
@US1345335
@releaseUnknown
@iterationUnknown
Feature: US1345335 - New UCM - Market_Products

  @TC592147
  @Manual
  @Functional
  Scenario: TC592147 - [RL0]
    Given market product groups exist in the CMD Product Description table
    When an authorized user needs to view the market products in the table
    Then market number and date are required inputs

  @TC618583
  @Manual
  @Functional
  Scenario: TC618583 - [RL1]
    Given market product groups exist in the CMD Product Description table for a market number
    When an authorized user provides a valid Contract Market Number and date as input
    Then market products records for the Market Number and date are provided
    And the user is able to view the response record details

  @TC618584
  @Manual
  @Functional
  Scenario: TC618584 - [RL2]
    Given market product groups exist in the CMD Product Description table for a market number
    When an authorized user does not provide a valid Contract Market Number or date as input
    Then market products records for the Market Number and date are not provided
    And a message returned 'MARKET NUMBER AND DATE REQUIRED'

  @TC618585
  @Manual
  @Functional
  Scenario: TC618585 - [RL3]
    Given market product groups exist in the CMD Product Description table
    When an authorized user provides a INVALID Contract Market Number and valid date
    Then market products records for the Market Number and date are not provided
    And a message returned 'ERROR INVALID MARKET NUMBER'

  @TC618586
  @Manual
  @Functional
  Scenario: TC618586 - [RL4]
    Given market product groups exist in the CMD Product Description table
    When an authorized user provides a valid Contract Market Number and INVALID date
    Then market products records for the Market Number and date are not provided
    And a message returned 'ERROR INVALID DATE'

  @TC618587
  @Manual
  @Functional
  Scenario: TC618587 - [RL5]
    Given market product groups DO NOT exist in the CMD Product Description table
    When an authorized user provides a valid Contract Market Number and date
    Then market products records for the Market Number and date are not provided
    And a message returned 'NO RECORDS FOUND FOR MARKET AND DATE'

  @TC618588
  @Manual
  @Functional
  Scenario: TC618588 - [RL6]
    Given a contract is not in Active status within Exari
    When the user needs to view the Market Products included or excluded from the Contract
    Then the user must select one or more Product Descriptions available in the Interview Template
    And then a list of Market Product title/descriptions are made available for the user to view only

  @TC618589
  @Manual
  @Functional
  Scenario: TC618589 - [RL7]
    Given a contract is in Active status within Exari
    When the user needs to update the Market Products included or excluded from the Contract
    Then the user must update one or more Product Descriptions available in the Interview Template
    And then a list of Market Product title/descriptions are available for the user to view only

