# Last updated on 
@US1103076
@2018.PI02
@2018.PI02.04
@PI02_Top3
@Plus
@Parity
@F186037
@releasePast
@iterationPast
Feature: US1103076 - Domain MS - Edits and Errors for Roster Update Event SPIKE

  @TC605357
  @Manual
  @Functional
  @US1103076
  @2018.PI02
  @2018.PI02.04
  Scenario: TC605357 - [RL0]
    Given the need to support the Update Roster event at the Domain Service level
    When validation of the payload and event occurs
    Then a document exists that includes the needed edits, errors and error messages

