# Last updated on 2018-07-30T15:50:48.471Z
@MVP
@PI02_Top3
@Plus
@10/1_Physician
@CLM_Exari
@Exari_Microservice
Feature: F164312 - Exari Microservice Establish Integration of CLM with RFP - Optum

  @CLM_UAT
  @RFP
  @2018.PI02
  @2018.PI02.03
  Scenario: US1082300::0
    Given a request with the following fields:
      | Place of Service |
      | Specialty Type |

    When the request is made to the RFP service
    Then the following fields should be returned:
      | Credentialing Required       |
      | Super Script                 |
      | Credentialing Entity         |
      | Accepting Applications (E&I) |
      | Accepting Applications (C&S) |
      | Accepting Applications (M&V) |


  @CLM_UAT
  @RFP
  @2018.PI02
  @2018.PI02.03
  Scenario: US1082300::1
    Given a request with the following fields:
      | Place of Service  |
      | Organization Type |

    When the request is made to the RFP service
    Then the following fields should be returned:
      | Credentialing Required       |
      | Super Script                 |
      | Credentialing Entity         |
      | Accepting Applications (E&I) |
      | Accepting Applications (C&S) |
      | Accepting Applications (M&V) |

    #Notes:
    #
    #- Specialty is for physicians and Org Type is for facilities, but there may be cases where a provider has both.
    #- Logically, the accepting new applications apply to the county level but the table can only be queried by state.
    #- How often is the super script updated?
    #- the accepting new applications fields do not always return simple booleans.

  @RFP
  @2018.PI02
  @2018.PI02.03
  Scenario: US1173268::0
    Given the provider's Specialty "abc123" is passed to the RFP service
    When finding the Specialty in RFP
    Then the RFP service will return a blank list

  @RFP
  @2018.PI02
  @2018.PI02.03
  Scenario: US1173268::1
    Given the provider's Org Type "abc123" is passed to the RFP service
    When finding the Org Type in RFP
    Then the RFP service will return a blank list

  @RFP
  @2018.PI02
  @2018.PI02.04
  Scenario: US1095910::0
    Given a user needs to call RFP grid
    When a user incorrectly inputs RFP data
    Then the user receives a RFP bad input error message

  @RFP
  @2018.PI02
  @2018.PI02.04
  Scenario: US1095910::1
    Given a user needs to call RFP grid
    When the RFP system goes down
    Then the user receives a RFP system error message

  @RFP
  @2018.PI02
  @2018.PI02.04
  Scenario: US1095910::2
    Given a user needs to call RFP grid
    When a RFP catastrophic error occurs
    Then a RFP service ticket will need to be created.

  @CLM_UAT
  @RFP
  @2018.PI02
  @2018.PI02.04
  Scenario: US1082297::0
    Given Exari will need to call our API
    Then a web client will need to be created.

  @CLM_UAT
  @RFP
  @2018.PI02
  @2018.PI02.04
  Scenario: US1082297::1
    Given UHC will need to provide Exari with RFP data including:
      | Place of Service  |
      | Line of Business  |
      | Specialty Type    |
      | Organization Type |

    When the Exari calls RFP with Provider Specialty
    Then an external data query will return a list of fields:
      | Credentialing Required       |
      | Super Script                 |
      | Credentialing Entity         |
      | Accepting Applications (E&I) |
      | Accepting Applications (C&S) |
      | Accepting Applications (M&V) |


  @RFP
  @2018.PI02
  @2018.PI02.04
  Scenario: US1035921::0
    Given the provider's Specialty "abc123" is passed to the RFP service #specialty code that doesn't exist
    When finding the Specialty in RFP
    Then the RFP service will return a blank list

  @RFP
  @2018.PI02
  @2018.PI02.04
  Scenario: US1035921::1
    Given the provider's Org Type "abc123" is passed to the RFP service #org type that doesn't exist
    When finding the Org Type in RFP
    Then the RFP service will return a blank list

  @2018.PI02
  @2018.PI02.05
  Scenario: US1177013
    Given a need to improve the RFP microservice
    Then the service must have 90 percent or greater test coverage with sonar
    And extensive logging statements for info and debug
    And more thorough documentation expanded on the default swagger config
    And an improved upload.html
    #90+% test coverage/ build with sonar
    #
    #Extensive logging(info and debug) statements
    #
    #More thorough documentation (expand on the default swagger config)
    #
    #Improve upload.html

