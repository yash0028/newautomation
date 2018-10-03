# Last updated on 
@US1337398
@2018.PI04
@2018.PI04.03
Feature: US1337398 - Identify new product codes with decision table

  @TC587891
  @Manual
  @Functional
  Scenario: TC587891 - [RL0]
    Given I have a product group description code
    When I access the product individual and groups table
    Then one or more market product group(s) is returned
    And input into the Contract Master look-up

  @TC597200
  @Manual
  @Functional
  Scenario: TC597200 - [RL1]
    Given I have a product group description code
    When I access the product individual and groups table
    Then no NDB product codes is returned
