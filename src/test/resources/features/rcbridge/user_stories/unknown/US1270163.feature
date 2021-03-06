# Last updated on 
@US1270163
@releaseUnknown
@iterationUnknown
Feature: US1270163 - Determine resolution pathway when more than one record exists for the same specCd and PartyTyp query

  @TC701680
  @Manual
  @Functional
  Scenario: TC701680 - [RL0]
    Given a user needs to query the table
    When the user provides a value for "ndbSpecCD" and "P" for "ndbRec"
    And more than one record exists for the same "ndbSpecCD" and "ndbRec"
    Then a Type 3 error will be logged in the database
    And the transaction will be aborted

