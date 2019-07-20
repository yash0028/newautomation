# Last updated on 
@US1806699
@2019.PI08
@2019.PI08.03
@releasePresent
@iterationFuture
Feature: US1806699 - CMD Determine PCP Indicator for each Provider on Roster Based on Market

  @RC_unlinked
  @TC877731
  @Manual
  @Functional
  Scenario: TC877731 - [RL1]
    Given a contract record exists in Exari UCM
    When ProviderRole is needed in the OCM record
    And the UHG_US_States-RO does not have a specific table
    Then the standard ProviderRole designation table is used

  @RC_unlinked
  @TC882850
  @Manual
  @Functional
  Scenario: TC882850 - [RL2]
    When ProviderRole designation table is called
    And the roster provider record matches a record on the table
    Then the ProviderRole has been determined
    And the ProviderRole value from column U (set$pnc_prov_contr_role_cd) is stored as part of the provider OCM record

