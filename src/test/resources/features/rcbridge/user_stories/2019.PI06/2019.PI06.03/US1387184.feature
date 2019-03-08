# Last updated on 
@US1387184
@2019.PI06
@2019.PI06.03
@releasePresent
@iterationPresent
Feature: US1387184 - Validate roster data

  @TC614183
  @Manual
  @Functional
  Scenario: TC614183 - [RL0]
    Given a RosterUpdated business event is published
    When the provider(s) being added have a P-type classification
    And all of the required information is present, including:
      | StartDate                 |
      | tin                       |
      | mpin                      |
      | npi                       |
      | providerName              |
      | providerSpecialtyCode     |
      | providerSpecialtyCodeDesc |
      | retroactiveReasonCode     |
    # ( retroactiveReasonCode is only required if the start date is prior to today's date)
    Then the transaction/event is valid
    And the transaction advances to process to subscribing platform(s)

  @TC708312
  @Manual
  @Functional
  Scenario: TC708312 - [RL10]
    Given a RosterUpdated business events is published
    When there are no providers on the roster
    Then the transaction/event is not valid
    And a Type 3 error is logged
    And an error message reads, "No providers were included in this request - unable to process"

  @TC708313
  @Manual
  @Functional
  Scenario: TC708313 - [RL11]
    Given a RosterUpdated business events is published
    When there are no providers to cancel included in the event
    Then the transaction/event is not valid
    And a Type 3 error is logged
    And an error message reads, "No eligible providers were included in this cancel request - unable to process"

  @TC616498
  @Manual
  @Functional
  Scenario: TC616498 - [RL1]
    Given a RosterUpdated business event is published
    When the provider(s) being added have an O-type classification
    And all of the required information is present, including:
      | StartDate               |
      | tin                     |
      | mpin                    |
      | npi                     |
      | providerName            |
      | providerOrgTypeCode     |
      | providerOrgTypeCodeDesc |
      | retroactiveReasonCode   |
    # ( retroactiveReasonCode is only required if the start date is prior to today's date)
    Then the transaction/event is valid
    And the transaction advances to process to subscribing platform(s)

  @TC616499
  @Manual
  @Functional
  Scenario: TC616499 - [RL2]
    Given a RosterUpdated business event is published
    When the provider(s) being added have a P-type classification
    And some of the required information is not present, including:
      | StartDate                 |
      | tin                       |
      | mpin                      |
      | npi                       |
      | providerName              |
      | providerSpecialtyCode     |
      | providerSpecialtyCodeDesc |
      | retroactiveReasonCode     |
    # ( retroactiveReasonCode is only required if the start date is prior to today's date)
    Then the transaction/event is not valid
    And a Type 3 error is logged
    And an error message reads, "One or more of the data elements required to complete this transaction is missing"

  @TC616500
  @Manual
  @Functional
  Scenario: TC616500 - [RL3]
    Given a RosterUpdated business event is published
    When the provider(s) being added have an O-type classification
    And some of the required information is not present, including:
      | StartDate               |
      | tin                     |
      | mpin                    |
      | npi                     |
      | providerName            |
      | providerOrgTypeCode     |
      | providerOrgTypeCodeDesc |
      | retroactiveReasonCode   |
    # ( retroactiveReasonCode is only required if the start date is prior to today's date)
    Then the transaction/event is not valid
    And a Type 3 error is logged
    And an error message reads, "One or more of the data elements required to complete this transaction is missing"

  @TC616501
  @Manual
  @Functional
  Scenario: TC616501 - [RL4]
    Given a RosterUpdated business event is published
    When there are no providers on the roster
    Then the transaction/event is not valid
    And a Type 3 error is logged
    And an error message reads "No providers were included in this request - unable to process"

  @TC616502
  @Manual
  @Functional
  Scenario: TC616502 - [RL5]
    Given a RosterUpdated business events is published
    When there are no provider adds included in the event
    Then the transaction/event is not valid
    And a Type 3 error is logged
    And an error message reads, "No eligible providers were included in this add request - unable to process"

  @TC708308
  @Manual
  @Functional
  Scenario: TC708308 - [RL6]
    Given a RosterUpdated business event is published
    When the provider(s) being added have a P-type classification
    And all of the required information is present, including:
      | StartDate                 |
      | tin                       |
      | mpin                      |
      | npi                       |
      | providerName              |
      | providerSpecialtyCode     |
      | providerSpecialtyCodeDesc |
      | retroactiveReasonCode     |
    # ( retroactiveReasonCode is only required if the start date is prior to today's date)
    Then the transaction/event is valid
    And the transaction advances to determining if cancel contains a PCP
    # (No type 3 error is generated)

  @TC708309
  @Manual
  @Functional
  Scenario: TC708309 - [RL7]
    Given a RosterUpdated business event is published
    When the provider(s) being added have an O-type classification
    And all of the required information is present, including:
      | StartDate               |
      | tin                     |
      | mpin                    |
      | npi                     |
      | providerName            |
      | providerOrgTypeCode     |
      | providerOrgTypeCodeDesc |
      | retroactiveReasonCode   |
    # ( retroactiveReasonCode is only required if the start date is prior to today's date)
    Then the transaction/event is valid
    And the transaction advances to process to subscribing platform(s)

  @TC708310
  @Manual
  @Functional
  Scenario: TC708310 - [RL8]
    Given a RosterUpdated business event is published
    When the provider(s) being added have a P-type classification
    And some of the required information is not present, including:
      | StartDate                 |
      | tin                       |
      | mpin                      |
      | npi                       |
      | providerName              |
      | providerSpecialtyCode     |
      | providerSpecialtyCodeDesc |
      | retroactiveReasonCode     |
    # ( retroactiveReasonCode is only required if the start date is prior to today's date)
    Then the transaction/event is not valid
    And a Type 3 error is logged
    And an error message reads, "One or more of the data elements required to complete this transaction is missing"

  @TC708311
  @Manual
  @Functional
  Scenario: TC708311 - [RL9]
    Given a RosterUpdated business event is published
    When the provider(s) being added have an O-type classification
    And some of the required information is not present, including:
      | StartDate               |
      | tin                     |
      | mpin                    |
      | npi                     |
      | providerName            |
      | providerOrgTypeCode     |
      | providerOrgTypeCodeDesc |
      | retroactiveReasonCode   |
    # ( retroactiveReasonCode is only required if the start date is prior to today's date)
    Then the transaction/event is not valid
    And a Type 3 error is logged
    And an error message reads, "One or more of the data elements required to complete this transaction is missing"

