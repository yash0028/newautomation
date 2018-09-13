# Last updated on 
@PI02_Top3
@Exari_Microservice
@MVP
@10/1_Physician
@Priority_1
@CLM_Exari
@Parity
@F201611
Feature: F201611 - Exari Microservice Complete Integration of Exari with PES (Demographic) - Optum

  @PES
  @Alex_M
  @US1194560
  @2018.PI03
  Scenario: US1194560 - PES ExternaI Data Query (Appendix 1 lookup)
    When querying the Appendix 1 Lookup external data query
    Then a valid response is returned to Exari

  @Andrew_B
  @PES
  @US1253705
  @2018.PI03
  Scenario: US1253705::0 - Create Appendix 1 Search Demographics API
    #Happy Path
    Given a user wants to populate appendix 1 with addresses
    When a "tin" of "760027557" is passed
    Then PES returns the following information:
      | addressLine1 |
      | addressType |
      | city |
      | state |
      | zip |
      | phoneNumbers |
      | tin |
      | npi |

  @Andrew_B
  @PES
  @US1253705
  @2018.PI03
  Scenario: US1253705::1 - Create Appendix 1 Search Demographics API
    #Bad Path
    Given a user wants to populate appendix 1 with addresses
    When a "tin" of "abcd12345" is passed
    Then the user receives a bad input error message

  @US1210131
  @2018.PI03
  Scenario: US1210131 - [SPIKE] Bulk Provider Extract - PES
    Given That PES needs to provide Exari with Bulk Provider Extract
    Then a developer will research how to provide Exari with the bulk provider extract.

