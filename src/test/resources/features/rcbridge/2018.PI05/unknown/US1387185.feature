# Last updated on 
@US1387185
@2018.PI05
@MVP
@Maintenance
@releaseFuture
@iterationUnknown
Feature: US1387185 - Validate roster data - cancel

  @TC614182
  @Manual
  @Functional
  Scenario: TC614182 - [RL0]
    Given a RosterUpdated business event is published
    When the provider(s) being added have a P-type classification
    And all of the required information is present, including cancelDate, tin, mpin, npi, providerName, providerSpecialtyCode, providerSpecialtyCodeDesc, cancelReasonCode, retroactiveReasonCode
    Then the transaction/event is valid
    And the transaction advances to determining if cancel contains a PCP

  @TC616910
  @Manual
  @Functional
  Scenario: TC616910 - [RL1]
    Given a RosterUpdated business event is published
    When the provider(s) being added have an O-type classification
    And all of the required information is present, including StartDate, tin, mpin, npi, providerName, providerOrgTypeCode, providerOrgTypeCodeDesc, cancelReasonCode, retroactiveReasonCode
    Then the transaction/event is valid
    And the transaction advances to process to subscribing platform(s)

  @TC616911
  @Manual
  @Functional
  Scenario: TC616911 - [RL2]
    Given a RosterUpdated business event is published
    When the provider(s) being added have a P-type classification
    And some of the required information is not present, including StartDate, tin, mpin, npi, providerName, providerSpecialtyCode, providerSpecialtyCodeDesc, cancelReasonCode, retroactiveReasonCode
    Then the transaction/event is not valid
    And a Type 3 error is logged
    And an error message reads, "One or more of the data elements required to complete this transaction is missing"

  @TC616912
  @Manual
  @Functional
  Scenario: TC616912 - [RL3]
    Given a RosterUpdated business event is published
    When the provider(s) being added have an O-type classification
    And some of the required information is not present, including StartDate, tin, mpin, npi, providerName, providerOrgTypeCode, providerOrgTypeCodeDesc, cancelReasonCode, retroactiveReasonCode
    Then the transaction/event is not valid
    And a Type 3 error is logged
    And an error message reads, "One or more of the data elements required to complete this transaction is missing"

  @TC616913
  @Manual
  @Functional
  Scenario: TC616913 - [RL4]
    Given a RosterUpdated business events is published
    When there are no providers on the roster
    Then the transaction/event is not valid
    And a Type 3 error is logged
    And an error message reads, "No providers were included in this request - unable to process"

  @TC616914
  @Manual
  @Functional
  Scenario: TC616914 - [RL5]
    Given a RosterUpdated business events is published
    When there are no providers to cancel included in the event
    Then the transaction/event is not valid
    And a Type 3 error is logged
    And an error message reads, "No eligible providers were included in this cancel request - unable to process"

