# Last updated on 2018-05-10T21:27:46.130Z
@MVP
@PI02_Top3
@CLM_Exari
@Exari_Microservice
Feature: F164312 - Exari Microservice Establish Integration of CLM with RFP - Optum

  @2018.PI02
  @2018.PI02.04
  Scenario: US1035923
    Given requested data isn't found in RFP
    When the Exari Interview requests that from RFP
    Then the correct error message will be passed to Exari.

  @2018.PI02
  @2018.PI02.03
  Scenario: US1020936
    Given the contract type is physician
    When the results from PES contain the provider's ORG type and Specialty
    Then the RFP database tells the user if they are able to be accepted.

  @2018.PI02
  @2018.PI02.03
  Scenario: US1082300
    Given the CLM micro service system will need data from the RFP grid,
    Then a microservice will need to be created to expose that data.

  @2018.PI02
  @2018.PI02.04
  Scenario: US1095910::0
    Given a user needs to call RFP grid
    When a user incorrectly inputs data
    Then the user receives a bad input error message

  @2018.PI02
  @2018.PI02.04
  Scenario: US1095910::1
    Given a user needs to call RFP grid
    When the system goes down
    Then the user receives a system error message

  @2018.PI02
  @2018.PI02.04
  Scenario: US1095910::2
    Given a user needs to call RFP grid
    When a catastrophic error occurs
    Then a service ticket will need to be created.

  @2018.PI02
  @2018.PI02.03
  Scenario: US1082297
    Given Exari will need to call our API
    Then a web client will need to be created.

  @2018.PI02
  @2018.PI02.03
  Scenario: US1035921
    Given an Org type or specialty
    When It is not found in the RFP Grid
    Then the user sees an error.
    Then And the error should be: the org type or specialty isn't found on the RFP Grid.

