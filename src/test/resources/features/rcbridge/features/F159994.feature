# Last updated on 
@MVP
@F159994
Feature: F159994 - Establish initial Integration of Exari with PES (Demographic) - Optum

  @Provider_Demographics
  @PES
  @US978386
  @2018.PI01
  Scenario: US978386 - [Spike] (Provider) Evaluate what PES APIs are required for Provider service
    Given that PES has many API's
    When we call those APIs, we need to understand what can be returned
    Then the development team should understand the PES APIs.

  @US1057716
  @2018.PI01
  Scenario: US1057716 - Micro Service connecting to Provider Search Services
    Given a micro service will need to be created and be able to connect through layer 7 and a token be created
    When the connection is created
    Then the connection should be tested.

