# Last updated on 
@US1059062
@2018.PI03
@2018.PI03.05
@releasePast
@iterationPast
Feature: US1059062 - [Continued]Common Pricing Solution - COSMOS Payload - Add Contract

  @CLM_UAT
  @TC584913
  @Manual
  @Acceptance
  Scenario: TC584913 - TC-01_Validate COSMOS CPS payload with the correct data.
    Given the COSMOS CPS payload is built with the correct data
    When the PPC Contract loads to COSMOS for CPS
    Then the CPS Contract will load successfully to COSMOS

  @CLM_UAT
  @TC584915
  @Manual
  @Acceptance
  Scenario: TC584915 - TC-02_Validate COSMOS CPS payload with the incorrect data.
    Given the COSMOS CPS payload is built with incorrect data
    When the PPC Contract loads to COSMOS for CPS
    Then the CPS Contract will fail to load to COSMOS

  @TC562744
  @Manual
  @Functional
  Scenario: TC562744 - [RL0] Validate add contract with correct data
    #Common Pricing Solution (CPS)
    #Planned Percent Complete (PPC)
    Given the COSMOS CPS payload is built with the correct data
    When the PPC Contract loads to COSMOS for CPS
    Then the CPS Contract will load successfully to COSMOS

  @TC562745
  @Manual
  @Functional
  Scenario: TC562745 - [RL1] Validate add contract with incorrect data
    Given the COSMOS CPS payload is built with incorrect data
    When the PPC Contract loads to COSMOS for CPS
    Then the CPS Contract will fail to load to COSMOS

