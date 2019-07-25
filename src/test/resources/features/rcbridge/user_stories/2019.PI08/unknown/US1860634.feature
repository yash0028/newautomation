# Last updated on 
@US1860634
@2019.PI08
@releasePresent
@iterationUnknown
Feature: US1860634 - PED vs Original PED

  @TC911640
  @Manual
  @Functional
  Scenario: TC911640 - [RL0]
    Given a physician negotiation is created
    When the Planned Effective Date is input
    Then the Original Planned Effective Date is captured
    And the user can't change the Original Planned effective date

  @TC911642
  @Manual
  @Functional
  Scenario: TC911642 - [RL1]
    Given the Planned Effective date exists
    When the user updated the PED on the "Update Dates - 1 Repeat split"
    Then the Original Planned Effective Date does not change

