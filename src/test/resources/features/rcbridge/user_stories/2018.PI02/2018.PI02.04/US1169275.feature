# Last updated on 
@#MVP
@Parity
@US1169275
@2018.PI02
@2018.PI02.04
Feature: US1169275 - NDB Common Pricing Solution Payload analysis SPIKE

  @TC564703
  @Automated
  @Functional
  Scenario: TC564703 - [RL0]
    Given an Exari contract includes a COSMOS product priced via Common Pricing Solution (CPS)
    When a contract business event triggers in Exari
    Then the contract integration process accurately reflects the needed information to support CPS

