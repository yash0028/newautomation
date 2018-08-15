# Last updated on 
@MVP
@PI02_Top3
@Domain_Microservice
@Parity
@F183241
Feature: F183241 - DOMAIN MS Optum - Create Provider Contract Query API (Inquiry)

  @CLM_UAT
  @US1096246
  @2018.PI02
  Scenario: US1096246::0 - Create contract query microservice (inquiry)
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made
    Then The contract data is sent back to PIC or Examiner

  @CLM_UAT
  @US1096246
  @2018.PI02
  Scenario: US1096246::1 - Create contract query microservice (inquiry)
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made with invalid data
    Then The service will return an error

  @CLM_UAT
  @US1096246
  @2018.PI02
  Scenario: US1096246::2 - Create contract query microservice (inquiry)
    Given A contract request from PIC or Examiner
    When The REST service is unavailable
    Then An server error will be returned

  @US1194525
  @2018.PI02
  Scenario: US1194525::0 - [Unfinished] Examiner implementation
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made
    Then The contract data is sent back to PIC or Examiner

  @US1194525
  @2018.PI02
  Scenario: US1194525::1 - [Unfinished] Examiner implementation
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made with invalid data
    Then The service will return an error

  @US1194525
  @2018.PI02
  Scenario: US1194525::2 - [Unfinished] Examiner implementation
    Given A contract request from PIC or Examiner
    When The REST service is unavailable
    Then An server error will be returned

  @US1089539
  @2018.PI02
  Scenario: US1089539 - Optum - Create Interface Specification for API service
    Given an API exists for use
    When all Common data fields have been identified
    Then an API interface specification is created and available
    # API Interface Specification is need to define API request/response

  @CLM_UAT
  @US1148895
  @2018.PI02
  Scenario: US1148895::0 - Create contract query microservice Examiner (inquiry)
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made
    Then The contract data is sent back to PIC or Examiner

  @CLM_UAT
  @US1148895
  @2018.PI02
  Scenario: US1148895::1 - Create contract query microservice Examiner (inquiry)
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made with invalid data
    Then The service will return an error

  @CLM_UAT
  @US1148895
  @2018.PI02
  Scenario: US1148895::2 - Create contract query microservice Examiner (inquiry)
    Given A contract request from PIC or Examiner
    When The REST service is unavailable
    Then An server error will be returned

  @US1179423
  @2018.PI02
  Scenario: US1179423::0 - [Continued] Examiner implementation
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made
    Then The contract data is sent back to PIC or Examiner

  @US1179423
  @2018.PI02
  Scenario: US1179423::1 - [Continued] Examiner implementation
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made with invalid data
    Then The service will return an error

  @US1179423
  @2018.PI02
  Scenario: US1179423::2 - [Continued] Examiner implementation
    Given A contract request from PIC or Examiner
    When The REST service is unavailable
    Then An server error will be returned

  @CLM_UAT
  @US1148878
  @2018.PI02
  Scenario: US1148878::0 - Create contract query microservice PIC (inquiry)
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made
    Then The contract data is sent back to PIC or Examiner

  @CLM_UAT
  @US1148878
  @2018.PI02
  Scenario: US1148878::1 - Create contract query microservice PIC (inquiry)
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made with invalid data
    Then The service will return an error

  @CLM_UAT
  @US1148878
  @2018.PI02
  Scenario: US1148878::2 - Create contract query microservice PIC (inquiry)
    Given A contract request from PIC or Examiner
    When The REST service is unavailable
    Then An server error will be returned

  @US1098621
  @2018.PI02
  Scenario: US1098621 - Examiner needs analysis - Spike
    Given information is needed by Examiner
    When the information needed is stored in Exari
    Then documentation exists that outlines Examiner needs for input and outputs

  @#MVP
  @US1098623
  @2018.PI02
  Scenario: US1098623 - Provider Intent Certification (PIC) needs analysis - Spike
    Given PIC needs information stored in Exari
    When PIC initiates the inquiry request
    Then documentation exists to successfully initiate and respond

  @US1194527
  @2018.PI02
  Scenario: US1194527::0 - [Unfinished] PIC Implementation
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made
    Then The contract data is sent back to PIC or Examiner

  @US1194527
  @2018.PI02
  Scenario: US1194527::1 - [Unfinished] PIC Implementation
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made with invalid data
    Then The service will return an error

  @US1194527
  @2018.PI02
  Scenario: US1194527::2 - [Unfinished] PIC Implementation
    Given A contract request from PIC or Examiner
    When The REST service is unavailable
    Then An server error will be returned

