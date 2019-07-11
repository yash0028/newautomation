# Last updated on 
@CMD
@US1898507
@2019.PI08
@2019.PI08.02
@releasePresent
@iterationPresent
Feature: US1898507 - Indemnity Market Product Group

  @TC877725
  @Manual
  @Functional
  @CMD
  Scenario: TC877725 - [RL0]
    Given a valid Exari contract transaction exists
    When UHG_Product_Services property includes 'Indemnity'
    And Payment Appendix Indemnity does not exist in the contract UCM
    Then the Indemnity market product group applies to the contract OCM
    And Indemnity product details including contract masters are stored in the OCM

