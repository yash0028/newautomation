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

  @#MVP
  @Scrum_Team_1
  @PES
  @US1323657
  @2018.PI04
  Scenario: US1323657 - PES Automation of Add. locations for all other contracts
    When a "tin" of "760027557" is passed to appendix 1
    Then PES returns the following information:
      | mpin |
      | tin |
      | firstName |
      | lastName |
      | facilityName |
      | providerDegree |
      | addressLine1 |
      | addressLine2 |
      | addressType |
      | city |
      | state |
      | zip |
      | phoneNumbers |
      | faxNumbers |
      | emailAddresses |

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
    When a "tin" of "760027557" is passed to appendix 1
    Then PES returns the following information:
      | addressLine1 |
      | addressType |
      | city |
      | state |
      | zip |

  @Andrew_B
  @PES
  @US1253705
  @2018.PI03
  Scenario: US1253705::1 - Create Appendix 1 Search Demographics API
    #Bad Path
    Given a user wants to populate appendix 1 with addresses
    When a "tin" of "abcd12345" is passed to appendix 1
    Then the user receives a bad input error message

  @PES
  @US1311485
  @2018.PI03
  Scenario: US1311485::0 - PES Roster Call -Change Output Results
    # For Physician
    Given a user wants to do a search for Roster
    When a "tin" of "760027557" is passed to roster
    Then PES returns the following information:
      | mpin |
      | npi |
      | firstName |
      | middleName |
      | lastName |
      | providerDegree |
      | organization |
      | code |
      | description |
      | providerTypeCode |
    # Note: "code" and "description" are for specialty

  @PES
  @US1311485
  @2018.PI03
  Scenario: US1311485::1 - PES Roster Call -Change Output Results
    # For Facility
    Given a user wants to do a search for Roster
    When a "mpin" of "6177192" is passed to roster
    Then PES returns the following information:
      | mpin |
      | npi |
      | firstName |
      | middleName |
      | lastName |
      | providerDegree |
      | organization |
      | organizationalType |
      | organizationalTypeDescription |
      | code |
      | description |
      | providerTypeCode |
    # Note: "code" and "description" are for specialty

  @US1210131
  @2018.PI03
  Scenario: US1210131 - [SPIKE] Bulk Provider Extract - PES
    Given That PES needs to provide Exari with Bulk Provider Extract
    Then a developer will research how to provide Exari with the bulk provider extract.

