# Last updated on 
@US1359165
@2018.PI04
@2018.PI04.03
@MVP
@Madhur
@Priority_1
@CMD
@F218723
@releasePresent
@iterationPast
Feature: US1359165 - Update status of contract ID installation status.

  @TC597208
  @Manual
  @Functional
  @US1359165
  @2018.PI04
  @2018.PI04.03
  Scenario: TC597208 - [RL0]
    # Scenario 1 (user selected contract master- Use this always
    Given The UHN contract admin has selected a contract master for all product groupings for a contract ID
    When All product groupings for a contract ID have a contract master loaded in the database
    Then Update the status of the transaction for the contract ID to resolved/Completed
    And Submit the transaction to downstream systems for installation
