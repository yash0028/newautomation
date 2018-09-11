# Last updated on 
@US1285441
@2018.PI03
Feature: US1285441 - [Continued]Identify new Product Codes

  @TC574135
  @Automated
  @Functional
  Scenario: TC574135 - [RL1]
    When an invalid contract details are called from the crosswalk tables
    Then the service returns an error

  @TC564951
  @Automated
  @Functional
  Scenario: TC564951 - [RL0]
    When the product codes are called from the crosswalk tables
    Then the correct product codes are returned.

