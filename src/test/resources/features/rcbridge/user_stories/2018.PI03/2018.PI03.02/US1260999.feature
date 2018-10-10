# Last updated on 
@US1260999
@2018.PI03
@2018.PI03.02
@MVP
@PI02_Top3
@Cosmos
@NDB_Roster_Update
@Parity
@F205218
Feature: US1260999 - [Unfinished] NDB Layer 7 Implementation

  @TC605362
  @Manual
  @Functional
  @US1260999
  @2018.PI03
  @2018.PI03.02
  Scenario: TC605362 - [RL0]
    Given Exari needs to connect to NDB through layer 7
    When Exari calls NDB through layer 7
    Then a valid response is received by NDB

