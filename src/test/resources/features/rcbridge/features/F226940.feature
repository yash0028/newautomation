# Last updated on 
@Unet_Cosmos
@MVP
@Plus
@10/1_Physician
@Priority_1
@CMD
@Parity
@F226940
Feature: F226940 - Integration Services App2 - NDB UNET/COSMOS Contract Master API's (Part 2)

  @Amrutha
  @MVP+1
  @US1204297
  @2018.PI04
  Scenario: US1204297 - NDB Common Pricing Solution Lookup API
    Given the Exari / CLM>NDB CPS Lookup API payload data is correct
    When NDB receives the Search parameter data
    Then NDB will search and return back the valid CPS data for the search parameters requested.

