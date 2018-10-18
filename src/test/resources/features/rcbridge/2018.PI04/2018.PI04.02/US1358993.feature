# Last updated on
@PES
@US1358993
@2018.PI04
@2018.PI04.02
@Priority_1
@Scrum_Team_1
@F232041
@releasePresent
@iterationPast
Feature: US1358993 - PES - Appendix Address Relationships

  @TC597153
  @Automated
  @Functional
  @PES
  @US1358993
  @2018.PI04
  @2018.PI04.02
  Scenario: TC597153 - [RL0] Validate fields for additional locations in PES call
    When a call is made for additional locations with MPIN "39858" and TIN "222534389"
    Then PES returns the following fields for provider:
      | mpin             |
      | tin              |
      | firstName        |
      | lastName         |
      | facilityName     |
      | providerDegree   |
      | primaryIndicator |
    And PES returns the additional PLSV and their associated billing address or mailing address
    And PES returns the following fields for address:
      | addressLine1   |
      | addressLine2   |
      | addressType    |
      | city           |
      | state          |
      | zip            |
      | phoneNumbers   |
      | faxNumbers     |
      | emailAddresses |

