# Last updated on 
@US1197943
@2018.PI03
Feature: US1197943 - Create Product Roster Screen

  @TC565358
  @Automated
  @Functional
  @US1197943
  @2018.PI03
  Scenario: TC565358 - [RL0]
    Given a contract includes a product offering
    When a contracts product offering code or product code groups is available on the product crosswalk
    Then the product codes are displayed.

