# Last updated on 
@CMD
@US1898507
@2019.PI08
@2019.PI08.03
@releasePresent
@iterationPast
Feature: US1898507 - Indemnity Market Product Group

  @TC877725
  @Manual
  @Functional
  @CMD
  Scenario: TC877725 - [RL0]
    Given a valid Exari contract transaction exists
    When UHG_Product_Services property includes 'Indemnity'
    Then the Indemnity market product group applies to the contract OCM

  @TC905908
  @Manual
  @Functional
  @CMD
  Scenario: TC905908 - [RL1]
    Given Indemnity product group applies to the contract
    When Payment Appendix Indemnity does not exist in the contract UCM
    Then Payment Appendix All Payer fee schedule is applied to the Indemnity product

  @RC_unlinked
  @TC905915
  @Manual
  @Functional
  @CMD
  Scenario: TC905915 - [RL2]
    Given Indemnity product group applies to the contract
    When Payment Appendix Indemnity does exist in the contract UCM
    Then Payment Appendix Indemnity fee schedule is applied to the Indemnity product

