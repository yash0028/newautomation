# Last updated on 
@MVP
@F201505
Feature: F201505 - CLM DevOps PI03

  @US1181927
  @2018.PI03
  Scenario: US1181927 - Integrate Acceptance Testing into Pipeline
    Given the need for acceptance testing in the pipeline
    Then we need to implement acceptance testing into the pipeline

  @Mark_E.
  @US1289622
  @2018.PI03
  Scenario: US1289622 - Initialize events from contract transaction changes in Event Trigger
    Given An email is sent to the Optum Exari update email address
    When the event is sent to the Event Gateway
    Then the event has a transaction id corresponding to the contract update that initiated the email

  @US1273084
  @2018.PI03
  Scenario: US1273084 - Fortify Scans
    Given that code is pushed to master,
    When the code gets to the point in the pipeline for Fortify,
    Then the code is scanned by Fortify and results are uploaded to SCAR

  @Charlie
  @US1272911
  @2018.PI03
  Scenario: US1272911 - Fix Fortify Issues
    Given services that are maintained by CLM Team 1
    When Fortify reports high-end critical issues on a service
    Then a developer needs to fix the high-end critical issues

