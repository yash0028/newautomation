# Last updated on
@US1328687
@2018.PI04
@F205008
@releasePresent
@iterationUnknown
Feature: US1328687 - Determine Contract Configuration Source - Delegated PLMI

  @TC584497
  @Manual
  @Functional
  @US1328687
  @2018.PI04
  Scenario: TC584497 - [RL0]
    Given a qualified transaction event notification is received
    When a PLMI configuration record exists for the contract
    Then the PLMI record details are used for processing UNET/COSMOS payloads

  @TC584498
  @Manual
  @Functional
  @US1328687
  @2018.PI04
  Scenario: TC584498 - [RL1]
    Given a qualified transaction event notification is received
    When a PLMI configuration record does not exist for the contract
    Then the CMD record details are used for processing UNET/COSMOS payloads

