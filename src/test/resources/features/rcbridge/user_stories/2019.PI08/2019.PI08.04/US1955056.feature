# Last updated on 
@US1955056
@2019.PI08
@2019.PI08.04
@releasePresent
@iterationFuture
Feature: US1955056 - Amendment and Cancel transactions - Effective Date - 1 calendar day when sending downstream

  @TC921996
  @Manual
  @Functional
  Scenario: TC921996 - [RL0]
    Given a cancel transaction is needed to facilitate the amendment
    When the cancel date is needed for downstream processing
    Then Cancel date should be = contractAmendDate – 1

  @TC921999
  @Manual
  @Functional
  Scenario: TC921999 - [RL1]
    Given a amend transaction is received in the OCM
    When the cancel date is needed for downstream processing
    Then Cancel date should be = contractAmendDate – 1

