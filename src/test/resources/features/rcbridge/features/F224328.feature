# Last updated on 
@Priority_1
@CMD
@F224328
Feature: F224328 - Optum Canonical model Validation

  @CMD
  @US1319551
  Scenario: US1319551::0 - NDB Contract Master Validation Set
    Given a valid contract event is published by Exari
    When contract configuration errors have been resolved
    Then contract master related validation review is performed against the OCM prior to publishing the transaction event

