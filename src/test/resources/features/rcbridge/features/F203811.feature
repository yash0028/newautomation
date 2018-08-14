# Last updated on 
@MVP
@Plus
@Priority_1
@Parity
@F203811
Feature: F203811 - Exari/ CLM >NDB Physician payload update of Reassign MPIN/IPA information - CF Team

  @US1202232
  @2018.PI03
  Scenario: US1202232 - Addition of new Reassign fields in API
    Given send the cancel transaction for a UNET contract
    When PCP = P
    Then The reassign fields data is updated in UNET.

  @US1202238
  @2018.PI03
  Scenario: US1202238 - Updating the Physician Payload logic for Reassign fields in Driver module
    Given send the cancel transaction for a UNET contract
    When PCP = P
    Then The reassign fields data is updated in UNET.

  @US1232967
  @2018.PI03
  Scenario: US1232967 - Addition of PCP Override field in API
    Given PCP value is received in payload
    When PCP = P / S / Other valid value
    Then the PCP indicator field is updated in NDB

