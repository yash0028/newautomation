# Last updated on 
@#MVP
@Parity
@US1169275
@2018.PI02
@2018.PI02.04
@MVP
@PI02_Top3
@NDB
@Parity
@F185083
Feature: US1169275 - NDB Common Pricing Solution Payload analysis SPIKE

  @TC605410
  @Manual
  @Functional
  @#MVP
  @Parity
  @US1169275
  @2018.PI02
  @2018.PI02.04
  Scenario: TC605410 - [RL0]
    Given an Exari contract includes a COSMOS product priced via Common Pricing Solution (CPS)
    When a contract business event triggers in Exari
    Then the contract integration process accurately reflects the needed information to support CPS

