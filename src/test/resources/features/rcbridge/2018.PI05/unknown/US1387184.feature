# Last updated on 
@US1387184
@2018.PI05
@MVP
@Maintenance
@F235963
@releaseFuture
@iterationUnknown
Feature: US1387184 - Validate roster data - add

  @TC614183
  @Manual
  @Functional
  @US1387184
  @2018.PI05
  Scenario: TC614183 - [RL0]
    Given a RosterUpdated business event is published
    When the provider(s) being added have a P-type classification
    And all of the required information is present, including StartDate, tin, mpin, npi, providerName, providerSpecialtyCode, providerSpecialtyCodeDesc, retroactiveReasonCode (only required if the start date is prior to today's date)
    Then the transaction/event is valid
    And the transaction advances to process to subscribing platform(s)

  @TC616498
  @Manual
  @Functional
  @US1387184
  @2018.PI05
  Scenario: TC616498 - [RL1]
    Given a RosterUpdated business event is published
    When the provider(s) being added have an O-type classification
    And all of the required information is present, including StartDate, tin, mpin, npi, providerName, providerOrgTypeCode, providerOrgTypeCodeDesc, retroactiveReasonCode (only required if the start date is prior to today's date)
    Then the transaction/event is valid
    And the transaction advances to process to subscribing platform(s)

  @TC616501
  @Manual
  @Functional
  @US1387184
  @2018.PI05
  Scenario: TC616501 - [RL4]
    Given a RosterUpdated business events is published
    When there are no providers on the roster
    Then the transaction/event is not valid
    And a Type 3 error is logged
    And an error message reads, "No providers were included in this request - unable to process"

  @TC616499
  @Manual
  @Functional
  @US1387184
  @2018.PI05
  Scenario: TC616499 - [RL2]
    Given a RosterUpdated business event is published
    When the provider(s) being added have a P-type classification
    And some of the required information is not present, including StartDate, tin, mpin, npi, providerName, providerSpecialtyCode, providerSpecialtyCodeDesc, retroactiveReasonCode (only required if the start date is prior to today's date)
    Then the transaction/event is not valid
    And a Type 3 error is logged
    And an error message reads, "One or more of the data elements required to complete this transaction is missing"

  @TC616500
  @Manual
  @Functional
  @US1387184
  @2018.PI05
  Scenario: TC616500 - [RL3]
    Given a RosterUpdated business event is published
    When the provider(s) being added have an O-type classification
    And some of the required information is not present, including StartDate, tin, mpin, npi, providerName, providerOrgTypeCode, providerOrgTypeCodeDesc, retroactiveReasonCode (only required if the start date is prior to today's date)
    Then the transaction/event is not valid
    And a Type 3 error is logged
    And an error message reads, "One or more of the data elements required to complete this transaction is missing"

  @TC616502
  @Manual
  @Functional
  @US1387184
  @2018.PI05
  Scenario: TC616502 - [RL5]
    Given a RosterUpdated business events is published
    When there are no providers adds included in the event
    Then the transaction/event is not valid
    And a Type 3 error is logged
    And an error message reads, "No eligible providers were included in this add request - unable to process"

