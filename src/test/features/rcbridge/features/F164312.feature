# Last updated on 2018-06-13T19:10:26.274Z
@MVP
@PI02_Top3
@Plus
@CLM_Exari
@Exari_Microservice
Feature: F164312 - Exari Microservice Establish Integration of CLM with RFP - Optum

  @RFP
  @2018.PI02
  @2018.PI02.03
  Scenario: US1082300::0
    Given a request with the following fields:
      | Place of Service |
      | Specialty Type |

    When the request is made to the RFP service
    Then the following fields should be returned:
      | Credentialing Required           |
      | Super Script                     |
      | Credentialing Entity             |
      | Accepting Applications (E&amp;I) |
      | Accepting Applications (C&amp;S) |
      | Accepting Applications (M&amp;V) |


  @RFP
  @2018.PI02
  @2018.PI02.03
  Scenario: US1082300::1
    Given a request with the following fields:
      | Place of Service  |
      | Organization Type |

    When the request is made to the RFP service
    Then the following fields should be returned:
      | Credentialing Required           |
      | Super Script                     |
      | Credentialing Entity             |
      | Accepting Applications (E&amp;I) |
      | Accepting Applications (C&amp;S) |
      | Accepting Applications (M&amp;V) |

    #Notes:
    #
    #- Specialty is for physicians and Org Type is for facilities, but there may be cases where a provider has both.
    #- Logically, the accepting new applications apply to the county level but the table can only be queried by state.
    #- How often is the super script updated?
    #- the accepting new applications fields do not always return simple booleans.

  @2018.PI02
  Scenario: US1095910::0
    Given a user needs to call RFP grid
    When a user incorrectly inputs data
    Then the user receives a bad input error message

  @2018.PI02
  Scenario: US1095910::1
    Given a user needs to call RFP grid
    When the system goes down
    Then the user receives a system error message

  @2018.PI02
  Scenario: US1095910::2
    Given a user needs to call RFP grid
    When a catastrophic error occurs
    Then a service ticket will need to be created.

  @2018.PI02
  @2018.PI02.04
  Scenario: US1082297::0
    Given Exari will need to call our API
    Then a web client will need to be created.

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
      | Credentialing Required           |
      | Super Script                     |
      | Credentialing Entity             |
      | Accepting Applications (E&amp;I) |
      | Accepting Applications (C&amp;S) |
      | Accepting Applications (M&amp;V) |


  @RFP
  @2018.PI02
  @2018.PI02.03
  Scenario: US1035921::0
    Given the provider's Specialty "abc123" is passed to the RFP service
    When finding the Specialty in RFP
    Then the RFP service will return a "False" value

  @RFP
  @2018.PI02
  @2018.PI02.03
  Scenario: US1035921::1
    Given the provider's Org Type "abc123" is passed to the RFP service
    When finding the Org Type in RFP
    Then the RFP service will return a "False" value

