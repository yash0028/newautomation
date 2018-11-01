# Last updated on 
@US1303750
@2018.PI04
@2018.PI04.03
@MVP
@Madhur
@Priority_1
@CMD
@F218723
@releasePresent
@iterationPast
Feature: US1303750 - [Continued] [Continued] CMD- User Input Required Page- View & Edit contract detail information (no search results found)

  @TC593196
  @Manual
  @Functional
  @US1303750
  @2018.PI04
  @2018.PI04.03
  Scenario: TC593196 - [RL1]
    # Scenario 2 (Multiple product grouping under contract ID- no contract master found for all)
    Given I have clicked on the detail information on a contract ID
    When The contract ID has more than one product grouping
    And No contract master was found for all product groupings
    Then For each product grouping under the contract ID I can see the following message: No contract master ID was found. Please make a selection to complete the contract load.
    And I can see the latest input parameters for each product grouping underneath the search details column:
    # NDB Market Number: XXXXXXXXXX
    # NDB Fee Schedule: XXXXXXXXXX
    # NDB Product Group: XX, XX, XX
    # COSMOS DIV: XXX
    # COSMOS Panel: XXXX
    # COSMOS Contract Number: XXXXX

  @TC619012
  @Manual
  @Functional
  @US1303750
  @2018.PI04
  @2018.PI04.03
  Scenario: TC619012 - [RL6]
    # Scenario 7 (click contract load button)
    Given I have selected a contract master for a product grouping
    When I click on the proceed with contract load button
    Then The following message is displayed to me "The contract master for this product grouping has been recorded"
    And The product grouping row is removed from the display

  @TC593198
  @Manual
  @Functional
  @US1303750
  @2018.PI04
  @2018.PI04.03
  Scenario: TC593198 - [RL3]
    # Scenario 4 (Select contract master- Use this once)
    Given I am on the CMD Action Required page
    When I entered in a contract master number, contract master name, contract system, contract master effective date
    And I selected use this contract master "once"
    And I have clicked on the submit button
    Then The modal window closes and I am brought back to the CMD action required page with the product grouping information I was editing displayed to me
    And The status of the contract master product grouping is changed to contract master selected

  @TC564772
  @Manual
  @Functional
  @US1303750
  @2018.PI04
  @2018.PI04.03
  Scenario: TC564772 - [RL0]
    # Scenario 1 (Single Product grouping under Contract ID- No contract master found)
    Given I have clicked on the detail information on a contract ID
    When The contract ID has a single product grouping
    And No contract master was found
    Then I can see the following message: "No contract master ID was found. Please make a selection to complete the contract load."
    And I can see the latest input parameters underneath the Search details column
    # NDB Market Number: XXXXXXXXXX
    # NDB Fee Schedule: XXXXXXXXXX
    # NDB Product Group: XX, XX, XX
    # COSMOS DIV: XXX
    # COSMOS Panel: XXXX
    # COSMOS Contract Number: XXXXX

  @TC593200
  @Manual
  @Functional
  @US1303750
  @2018.PI04
  @2018.PI04.03
  Scenario: TC593200 - [RL4]
    # Scenario 5 (Select contract master- Use this always)
    Given I am on the CMD Action Required page
    When I entered in a contract master number, contract master name, contract system, contract master effective date
    And I selected use this contract master "always"
    And I have clicked on the submit button
    Then The modal window closes and I am brought back to the CMD action required page with the product grouping information I was editing displayed to me
    And The status of the contract master product grouping is changed to contract master selected

  @TC593201
  @Manual
  @Functional
  @US1303750
  @2018.PI04
  @2018.PI04.03
  Scenario: TC593201 - [RL5]
    # scenario 6 (contract load button)
    Given I have selected a contract master for a product grouping
    When The status of the contract master product grouping is 'contract master selected"
    Then A proceed with contract load button appears

  @TC593197
  @Manual
  @Functional
  @US1303750
  @2018.PI04
  @2018.PI04.03
  Scenario: TC593197 - [RL2]
    # Scenario 3 (Edit contract master detail info- data fields choose contract master)
    Given I am on the CMD Action Required page
    When I have clicked the down arrow on a contract summary row
    And No contract results were found for the contract summary row
    And I have clicked the edit button
    Then A modal window appears for me to enter the following data fields.
    # Contract Master Number
    # Contract Master Name
    # Contract system
    # NDB, COSMOS, both
    # Contract Master effective Date
    # Use this contract master
    # once
    # always
    # Submit button

