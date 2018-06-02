# Last updated on 2018-06-01T14:09:33.161Z
@MVP
@PI02_Top3
@Domain_Microservice
@Parity
Feature: F183241 - DOMAIN MS Optum - Create Provider Contract Query API (Inquiry)

  @2018.PI02
  @2018.PI02.02
  Scenario: US1096246::0
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made
    Then The contract data is sent back to PIC or Examiner

  @2018.PI02
  @2018.PI02.02
  Scenario: US1096246::1
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made with invalid data
    Then The service will return an error

  @2018.PI02
  @2018.PI02.02
  Scenario: US1096246::2
    Given A contract request from PIC or Examiner
    When The REST service is unavailable
    Then An server error will be returned

  @2018.PI02
  @2018.PI02.03
  Scenario: US1148895::0
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made
    Then The contract data is sent back to PIC or Examiner

  @2018.PI02
  @2018.PI02.03
  Scenario: US1148895::1
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made with invalid data
    Then The service will return an error

  @2018.PI02
  @2018.PI02.03
  Scenario: US1148895::2
    Given A contract request from PIC or Examiner
    When The REST service is unavailable
    Then An server error will be returned

  @2018.PI02
  @2018.PI02.03
  Scenario: US1148878::0
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made
    Then The contract data is sent back to PIC or Examiner

  @2018.PI02
  @2018.PI02.03
  Scenario: US1148878::1
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made with invalid data
    Then The service will return an error

  @2018.PI02
  @2018.PI02.03
  Scenario: US1148878::2
    Given A contract request from PIC or Examiner
    When The REST service is unavailable
    Then An server error will be returned

  @2018.PI02
  @2018.PI02.01
  Scenario: US1098621
    Given information is needed by Examiner
    When the information needed is stored in Exari
    Then documentation exists that outlines Examiner needs for input and outputs

  @#MVP
  @2018.PI02
  @2018.PI02.01
  Scenario: US1098623
    Given PIC needs information stored in Exari
    When PIC initiates the inquiry request
    Then documentation exists to successfully initiate and respond

  @2018.PI02
  @2018.PI02.02
  Scenario: US1148875::0
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made
    Then The contract data is sent back to PIC or Examiner

  @2018.PI02
  @2018.PI02.02
  Scenario: US1148875::1
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made with invalid data
    Then The service will return an error

  @2018.PI02
  @2018.PI02.02
  Scenario: US1148875::2
    Given A contract request from PIC or Examiner
    When The REST service is unavailable
    Then An server error will be returned

