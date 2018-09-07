# Last updated on 
@US1059062
@2018.PI03
Feature: US1059062 - [Continued]Common Pricing Solution - COSMOS Payload - Add Contract

  @TC562744
  @Manual
  @Functional
  Scenario: TC562744 - Validate add contract with correct data
    #Common Pricing Solution (CPS)
    # Planned Percent Complete (PPC)
    Given the COSMOS CPS payload is built with the correct data
    When the PPC Contract loads to COSMOS for CPS
    Then the CPS Contract will load successfully to COSMOS

  @TC565013
  @Automated
  @Functional
  Scenario: TC565013 - [RL1]
    Given the COSMOS CPS payload is built with incorrect data
    When the PPC Contract loads to COSMOS for CPS
    Then the CPS Contract will fail to load to COSMOS

  @TC562745
  @Manual
  @Functional
  Scenario: TC562745 - Validate add contract with incorrect data
    Given the COSMOS CPS payload is built with incorrect data
    When the PPC Contract loads to COSMOS for CPS
    Then the CPS Contract will fail to load to COSMOS

  @TC565012
  @Automated
  @Functional
  Scenario: TC565012 - [RL0]
    #Common Pricing Solution (CPS)
    #Planned Percent Complete (PPC)
    Given the COSMOS CPS payload is built with the correct data
    When the PPC Contract loads to COSMOS for CPS
    Then the CPS Contract will load successfully to COSMOS

