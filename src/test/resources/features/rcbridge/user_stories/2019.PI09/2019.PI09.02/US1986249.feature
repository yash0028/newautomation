# Last updated on 
@US1986249
@2019.PI09
@2019.PI09.02
@releasePresent
@iterationPresent
Feature: US1986249 - CMD and OCM Alignment - Add Network Access Code (CON ARR) to OCM

  @TC954873
  @Automated
  @Functional
  Scenario: TC954873 - [RL0]
    Given a product should be included in the OCM
    When determining the contract master for a product group
    Then the CON ARR value is identified from the CMD table or CSI
    And the CON ARR assigned the title 'Network Access Code'
    And Network Access Code stored as part of the OCM

  @TC987535
  @Manual
  @Functional
  Scenario: TC987535 - [RL1]
    Given a valid record exists in PILOT_PROD INDIV AND GRPS table
    When the table record has value in column O
    Then the value is used during the contract master search request
    And only contract masters with CON ARR values that match are eligible to be used

