# Last updated on 
@US1405372
@2019.PI06
@releaseUnknown
@iterationUnknown
Feature: US1405372 - Itemize explicit language changes within Exari

  @TC743496
  @Manual
  @Functional
  Scenario: TC743496 - [RL0]
    Given an CONTRACT AMENDMENT is received
    When the TRANSACTION contains at least one UCM PROPERTY THAT IMPACTS CONFIGURATION
    Then the TRANSACTION passes validation
    And the TRANSACTION continues to applicable next step

  @TC743540
  @Manual
  @Functional
  Scenario: TC743540 - [RL1]
    Given an CONTRACT AMENDMENT is received
    When the TRANSACTION Does Not contain at least one UCM PROPERTY THAT DOES NOT IMPACT CONFIGURATION
    Then the TRANSACTION passes validation
    And the transaction ends and logged in database
    And a message generated 'PASSIVE TRANSACTION - NO IMPACT TO NDB UNET OR COSMOS'

