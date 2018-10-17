# Last updated on 
@US1278758
@2018.PI04
@2018.PI04.03
@MVP
@Madhur
@Priority_1
@CMD
@F218723
Feature: US1278758 - update status of product grouping installation status (work object)

  @TC564535
  @Automated
  @Functional
  @US1278758
  @2018.PI04
  @2018.PI04.03
  Scenario: TC564535 - [RL0]
    ###Scenario 1 (user selected contract master- Use this always
    Given The user has selected the proceed with Installation
    When The user has selected use this contract master always for a product grouping
    Then Populate the contract master the user selected for the product grouping for the contract ID

  @TC615272
  @Manual
  @Functional
  @US1278758
  @2018.PI04
  @2018.PI04.03
  Scenario: TC615272 - [RL1]
    ####Scenario 2 (User selected contract master- Use this just once)
    Given The user has selected the proceed with Installation
    When The user has selected use this contract once
    Then Populate the contract master the user selected for the product grouping for the contract ID

