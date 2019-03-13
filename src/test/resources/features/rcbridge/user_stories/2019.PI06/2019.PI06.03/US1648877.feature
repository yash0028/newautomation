# Last updated on 
@US1648877
@2019.PI06
@2019.PI06.03
@releasePresent
@iterationPresent
Feature: US1648877 - (Copy of) Validate roster data

  @TC752519
  @Manual
  @Functional
  Scenario: TC752519 - [RL0]
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

  @TC752529
  @Manual
  @Functional
  Scenario: TC752529 - [RL10]
    Given a RosterUpdated business events is published
    When there are no providers on the roster
    Then the transaction/event is not valid
    And a Type 3 error is logged
    And an error message reads, "No providers were included in this request - unable to process"

  @TC752530
  @Manual
  @Functional
  Scenario: TC752530 - [RL11]
    Given a RosterUpdated business events is published
    When there are no providers to cancel included in the event
    Then the transaction/event is not valid
    And a Type 3 error is logged
    And an error message reads, "No eligible providers were included in this cancel request - unable to process"

  @TC752520
  @Manual
  @Functional
  Scenario: TC752520 - [RL1]
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

  @TC752521
  @Manual
  @Functional
  Scenario: TC752521 - [RL2]
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

  @TC752522
  @Manual
  @Functional
  Scenario: TC752522 - [RL3]
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

  @TC752523
  @Manual
  @Functional
  Scenario: TC752523 - [RL4]
    Given a RosterUpdated business event is published
    When there are no providers on the roster
    Then the transaction/event is not valid
    And a Type 3 error is logged
    And an error message reads "No providers were included in this request - unable to process"

  @TC752524
  @Manual
  @Functional
  Scenario: TC752524 - [RL5]
    Given a RosterUpdated business events is published
    When there are no provider adds included in the event
    Then the transaction/event is not valid
    And a Type 3 error is logged
    And an error message reads, "No eligible providers were included in this add request - unable to process"

  @TC752525
  @Manual
  @Functional
  Scenario: TC752525 - [RL6]
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

  @TC752526
  @Manual
  @Functional
  Scenario: TC752526 - [RL7]
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

  @TC752527
  @Manual
  @Functional
  Scenario: TC752527 - [RL8]
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

  @TC752528
  @Manual
  @Functional
  Scenario: TC752528 - [RL9]
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

