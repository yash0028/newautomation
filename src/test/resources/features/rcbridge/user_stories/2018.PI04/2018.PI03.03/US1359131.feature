# Last updated on 
@US1359131
@2018.PI04
@2018.PI03.03
@MVP
@Madhur
@Priority_1
@CMD
@F218723
@releasePresent
@iterationPast
Feature: US1359131 - CMD user input-Page Edit Multiple contract masters per product group detail info

  @TC597172
  @Manual
  @Functional
  @US1359131
  @2018.PI04
  @2018.PI03.03
  Scenario: TC597172 - [RL0]
    #Scenario 1 (Select contract master- use this once)
    Given I have clicked edit on a product grouping on CMD Action Required page
    When I have selected a contract master on the modal window
    And I selected user this contract master "once"
    And I have clicked on the submit button
    Then The modal window closes and I am brought back to the CMD action required page with the product grouping information I was editing displayed to me
    And The status of the contract master product grouping is changed to contract master selected

  @TC597174
  @Manual
  @Functional
  @US1359131
  @2018.PI04
  @2018.PI03.03
  Scenario: TC597174 - [RL2]
    # scenario 3 (contract load button)
    Given I have selected a contract master for a product grouping
    When The status of of the contract master product grouping is 'contract master selected"
    Then A proceed with contract load button appears

  @TC597173
  @Manual
  @Functional
  @US1359131
  @2018.PI04
  @2018.PI03.03
  Scenario: TC597173 - [RL1]
    #Scenario 2 (select contract master- use this always
    Given I have clicked edit on a product grouping on CMD Action Required page
    When I have selected a contract master on the modal window
    And I selected user this contract master "always"
    And I have clicked on the submit button
    Then The modal window closes and I am brought back to the CMD action required page with the product grouping information I was editing displayed to me
    And The status of the contract master product grouping is changed to contract master selected

  @TC597175
  @Manual
  @Functional
  @US1359131
  @2018.PI04
  @2018.PI03.03
  Scenario: TC597175 - [RL3]
    # Scenario 4 (click contract load button)
    Given I have selected a contract master for a product grouping
    When I click on the proceed with contract load button
    Then The following message is displayed to me "The contract master for this product grouping has been recorded"
    And The product grouping row is removed from the display

