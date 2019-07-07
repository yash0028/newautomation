# Last updated on 
@US1806699
@2019.PI08
@2019.PI08.02
@releasePresent
@iterationFuture
Feature: US1806699 - CMD Rules - UHN Standard PCP Indicator NDB PCP IND ASSIGN TABLE

  @TC877783
  @Manual
  @Functional
  Scenario: TC877783 - [RL0]
    Given a valid provider record exist on a contract roster
    And the specialty code of the provider record matches the conditions in the attached specialty code list
    When the PCP IND value is needed for the NDB Payloads
    Then the value of 'P - Physician is a PCP' is included for each product group
    And the value stored in the provider OCM record

  @TC877731
  @Manual
  @Functional
  Scenario: TC877731 - [RL1]
    Given a valid provider record exist on a contract roster
    And the specialty code of the provider record DO NOT MATCH the conditions in the attached specialty code list
    When the PCP IND value is needed for the NDB Payloads
    Then the value of 'S - Physician is a Specialist' is included for each product group
    And the value stored in the provider OCM record
    ###

