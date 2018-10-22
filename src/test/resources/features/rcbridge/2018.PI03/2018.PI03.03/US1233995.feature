# Last updated on
@US1233995
@2018.PI03
@2018.PI03.03
@MVP
@PI02_Top3
@Cosmos
@NDB_Roster_Update
@Parity
@F205218
@releasePast
@iterationPast
Feature: US1233995 - [Continued] NDB Layer 7 Implementation

  @TC565272
  @Automated
  @Functional
  @US1233995
  @2018.PI03
  @2018.PI03.03
  Scenario: TC565272 - [RL0]
    Given Exari needs to connect to NDB through layer 7
    When Exari calls NDB through layer 7
    Then a valid response is received by NDB

  @TC535419
  @Automated
  @Functional
  @US1233995
  @2018.PI03
  @2018.PI03.03
  Scenario: TC535419 - NDB Layer 7 Connection Test
    Given Exari needs to connect to NDB through layer 7
    When Exari calls NDB through layer 7
    Then a valid response is received by NDB

