# Last updated on 2018-06-05T19:22:01.099Z
@MVP
@PI02_Top3
@Plus
@CLM_Exari
@Exari_Microservice
Feature: F164312 - Exari Microservice Establish Integration of CLM with RFP - Optum

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

  @RFP
  @2018.PI02
  @2018.PI02.03
  Scenario: US1035921
    Given an Org type or specialty
    When It is not found in the RFP Grid
    Then the user sees an error.
    Then And the error should be: the org type or specialty isn't found on the RFP Grid.

