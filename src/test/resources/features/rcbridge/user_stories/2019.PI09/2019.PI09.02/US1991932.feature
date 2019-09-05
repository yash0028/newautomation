# Last updated on 
@US1991932
@2019.PI09
@2019.PI09.02
@releasePresent
@iterationFuture
Feature: US1991932 - CMD and OCM Alignment - Site (Contract Org)

  @TC954883
  @Manual
  @Functional
  Scenario: TC954883 - [RL0]
    Given a valid record exists in PILOT_PROD INDIV AND GRPS table
    When sending contractingOrgCd in the NDB contract line payload
    Then the value from column B of the table record is used
    ###

