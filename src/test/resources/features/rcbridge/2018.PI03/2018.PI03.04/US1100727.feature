# Last updated on 
@MVP
@PI02_Top3
@PES
@CLM_Exari
@US1100727
@2018.PI03
@2018.PI03.04
@PI02_Top3
@PES
@Exari_Microservice
@MVP
@10/1_Physician
@Priority_1
@CLM_Exari
@Parity
@F201611
@releasePast
@iterationPast
Feature: US1100727 - External Data Query Roster Validation

  @TC554638
  @Manual
  @Functional
  @MVP
  @PI02_Top3
  @PES
  @CLM_Exari
  @US1100727
  @2018.PI03
  @2018.PI03.04
  Scenario: TC554638 - Bad Path Roster Validation EDQ
    Given I as a user have populated the Exari Provider Roster with MPIN, TAX ID, Provider Full Name (First, Last), and NPI
    When Exari reaches out to CLM Roster Service with invalid parameters of:
      | mpin |
      | tin |
      | firstName |
      | lastName |
      | npi |
    Then CLM returns a blank list

