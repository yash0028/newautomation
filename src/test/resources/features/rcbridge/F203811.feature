# Last updated on 2018-07-14T05:31:56.218Z
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

