# Last updated on 
@US1404732
@2020.PI03
@releaseFuture
@iterationUnknown
Feature: US1404732 - Determine amendment impact state (Passive or No)

  @TC743468
  @Manual
  @Functional
  Scenario: TC743468 - [RL0]
    Given an CONTRACT AMENDMENT is received
    When the TRANSACTION contains at least one UCM PROPERTY THAT IMPACTS CONFIGURATION
    Then the TRANSACTION passes validation
    And the TRANSACTION continues to applicable next step

  @TC743527
  @Manual
  @Functional
  Scenario: TC743527 - [RL1]
    Given an CONTRACT AMENDMENT is received
    When the TRANSACTION Does Not contain at least one UCM PROPERTY THAT DOES NOT IMPACT CONFIGURATION
    Then the TRANSACTION passes validation
    And the transaction ends and logged in database
    And a message generated 'PASSIVE TRANSACTION - NO IMPACT TO NDB UNET OR COSMOS'

