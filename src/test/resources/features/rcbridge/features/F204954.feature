# Last updated on 
@Unet_Cosmos
@MVP
@Plus
@10/1_Physician
@Priority_1
@CMD
@Parity
@F204954
Feature: F204954 - Integration Services App2 - NDB UNET/COSMOS Contract Master API's

  @Prateek
  @MVP+1
  @US1204285
  @2018.PI03
  Scenario: US1204285 - [Continued]Implement NDB Contract Master Lookup API
    Given the Exari / CLM>NDB contract master Lookup API payload data is correct
    When NDB receives the Search parameter data
    Then NDB will search and return back the valid contract master data for the search parameters requested.

  @MVP+1
  @US1271550
  @2018.PI03
  Scenario: US1271550 - [Spike] NDB Contract Master Lookup API
    Given the Exari / CLM>NDB contract master Lookup API payload data is correct
    When NDB receives the Search parameter data
    Then the spike analysis is completed

