# Last updated on 
@PI02_Top3
@Exari_Microservice
@MVP
@10/1_Physician
@Priority_1
@CLM_Exari
@Parity
@F201611
Feature: F201611 - Exari Microservice Complete Integration of Exari with PES (Demographic) - Optum (Carryover Items from PI2)

  @MVP
  @PI02_Top3
  @PES
  @CLM_Exari
  @US1100727
  @2018.PI03
  Scenario: US1100727 - External Data Query Roster Validation
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

  @PES
  @Alex_M
  @US1194560
  @2018.PI03
  Scenario: US1194560 - PES ExternaI Data Query (Appendix 1 lookup)
    Given a user wants to populate appendix 1 with addresses
    When a TIN is passed
    Then Street, Address Type, City,State Zip,Phone,TIN, Group NPI are returned from the service

  @Andrew_B
  @PES
  @US1253705
  @2018.PI03
  Scenario: US1253705 - Create Appendix 1 Search Demographics API
    Given a user wants to populate appendix 1 with addresses
    When a TIN is passed
    Then Street, Address Type, City,State Zip,Phone,TIN, Group NPI are returned from the service

  @US1210131
  @2018.PI03
  Scenario: US1210131 - [SPIKE] Bulk Provider Extract - PES
    Given That PES needs to provide Exari with Bulk Provider Extract
    Then a developer will research how to provide Exari with the bulk provider extract.

