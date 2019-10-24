# Last updated on 
@US1991885
@2019.PI09
@2019.PI09.04
@releasePresent
@iterationFuture
Feature: US1991885 - CMD and OCM Alignment - Record Status (Active only)

  @TC954876
  @Manual
  @Functional
  Scenario: TC954876 - [RL0]
    Given a valid record exists in PILOT_PROD INDIV AND GRPS table
    When the table record has value "INACTIVE" in column D of the table
    Then the record IS NOT available to be used for contract transactions

  @TC1015066
  @Manual
  @Functional
  Scenario: TC1015066 - [RL1]
    Given a valid record exists in PILOT_PROD INDIV AND GRPS table
    When the table record has value "ACTIVE" in column D of the table
    Then the record IS NOT available to be used for contract transactions

