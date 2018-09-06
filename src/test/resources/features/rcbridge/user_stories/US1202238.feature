# Last updated on 
@US1202238
@2018.PI03
Feature: US1202238 - Updating the Physician Payload logic for Reassign fields in Driver module

  @TC564826
  @Automated
  @Functional
  Scenario: TC564826 - [RL0]
    Given send the cancel transaction for a UNET contract
    When PCP = P
    Then The reassign fields data is updated in UNET.

