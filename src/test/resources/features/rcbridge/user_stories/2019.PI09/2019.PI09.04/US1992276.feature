# Last updated on 
@US1992276
@2019.PI09
@2019.PI09.04
@releasePresent
@iterationFuture
Feature: US1992276 - CMD and OCM Alignment - EFF END DT

  @TC954882
  @Manual
  @Functional
  Scenario: TC954882 - [RL0]
    Given a valid contract transaction is received
    When data from the PILOT_PROD INDIV AND GRPS table is needed for purposes supporting the OCM
    And the transaction EffectiveDate =< EFF END DT of the table record
    Then the table record IS available for use

  @TC1015069
  @Manual
  @Functional
  Scenario: TC1015069 - [RL1]
    Given a valid contract transaction is received
    When data from the PILOT_PROD INDIV AND GRPS table is needed for purposes supporting the OCM
    And the EffectiveDate of the transaction > EFF END DT of the table record
    Then the table record IS NOT available for use

