# Last updated on 
@MVP
@Priority
@US1260991
@2018.PI03
@2018.PI03.02
Feature: US1260991 - [Unfinished] Contract Product Description Crosswalk

  @TC565433
  @Automated
  @Functional
  Scenario: TC565433 - [RL0]
    Given a product description to product code crosswalk exists
    When exchanging information about the products included or excluded from an Exari contract
    Then the crosswalk provides the product code identifier

