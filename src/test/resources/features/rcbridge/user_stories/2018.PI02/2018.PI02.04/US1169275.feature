# Last updated on 
@#MVP
@Parity
@US1169275
@2018.PI02
@2018.PI02.04
@releasePast
@iterationPast
Feature: US1169275 - NDB Common Pricing Solution Payload analysis SPIKE

  @TC605410
  @Manual
  @Functional
  @#MVP
  @Parity
  Scenario: TC605410 - [RL0]
    Given an Exari contract includes a COSMOS product priced via Common Pricing Solution (CPS)
    When a contract business event triggers in Exari
    Then the contract integration process accurately reflects the needed information to support CPS

