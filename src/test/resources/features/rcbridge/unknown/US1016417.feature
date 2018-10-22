# Last updated on
@US1016417
@releaseUnknown
@iterationUnknown
Feature: US1016417 - Integrate CLM Exari with COSMOS Facility

  @TC565321
  @Automated
  @Functional
  @US1016417
  Scenario: TC565321 - [RL0]
    Given the Facility contract is complete in Exari and ready to be loaded into COSMOS
    When the user sets the contract to load to COSMOS
    Then Exari logic should send the contract data in real-time to COSMOS, and COSMOS team should be able to validate the contract data and load it into COSMOS PIC Div.

