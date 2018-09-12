# Last updated on 
@CMD
@F224328
Feature: F224328 - Canonical Contract Validation

  @CMD
  @US1319551
  Scenario: US1319551::0 - NDB Contract Master Validation Group
    Given a valid contract event is published by Exari
    When contract configuration errors have been resolved
    Then contract master related validation review is performed against the OCM prior to publishing the transaction event

