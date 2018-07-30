# Last updated on 2018-07-25T13:37:33.397Z
@MVP
@Plus
@Priority_1
@Parity
Feature: F203811 - Exari/ CLM >NDB Physician payload update of Reassign MPIN/IPA information - CF Team

  @2018.PI03
  @2018.PI03.01
  Scenario: US1202232
    Given send the cancel transaction for a UNET contract
    When PCP = P
    Then The reassign fields data is updated in UNET.

  @2018.PI03
  @2018.PI03.01
  Scenario: US1202238
    Given send the cancel transaction for a UNET contract
    When PCP = P
    Then The reassign fields data is updated in UNET.

  @2018.PI03
  @2018.PI03.02
  Scenario: US1232967
    Given PCP value is received in payload
    When PCP = P / S / Other valid value
    Then the PCP indicator field is updated in NDB

