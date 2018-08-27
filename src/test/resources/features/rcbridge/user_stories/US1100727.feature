# Last updated on 
@MVP
@PI02_Top3
@PES
@CLM_Exari
@US1100727
@2018.PI03
Feature: US1100727 - External Data Query Roster Validation

  @TC554638
  @Manual
  @Functional
  Scenario: TC554638 - Bad Path Roster Validation EDQ
    Given I as a user have populated the Exari Provider Roster with MPIN, TAX ID, Provider Full Name (First, Last), and NPI
    When Exari reaches out to CLM Roster Service with invalid parameters of:
      | mpin |
      | tin |
      | firstName |
      | lastName |
      | npi |
    Then CLM returns a blank list

  @TC554637
  @Manual
  @Functional
  Scenario: TC554637 - Happy Path Roster Validation EDQ
    Given I as a user have populated the Exari Provider Roster with MPIN, TAX ID, Provider Full Name (First, Last), and NPI
    When Exari reaches out to CLM Roster Service with parameters of:
      | mpin |
      | tin |
      | firstName |
      | lastName |
      | npi |
    Then CLM returns the following information from PES:
      | MPIN |
      | NPI |
      | Provider Name |
      | Degree Code |
      | Org Type Ind |
      | Org Type Desc |
      | Spec Ind |
      | Spec Desc |
      | Provider Classification |
      | CORP MPIN |

