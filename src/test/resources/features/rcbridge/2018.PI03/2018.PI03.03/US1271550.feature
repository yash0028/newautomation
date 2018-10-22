# Last updated on 
@MVP+1
@US1271550
@2018.PI03
@2018.PI03.03
@Unet_Cosmos
@MVP
@Plus
@10/1_Physician
@Priority_1
@CMD
@Parity
@F204954
@releasePast
@iterationPast
Feature: US1271550 - [Spike] NDB Contract Master Lookup API

  @TC605380
  @Manual
  @Functional
  @MVP+1
  @US1271550
  @2018.PI03
  @2018.PI03.03
  Scenario: TC605380 - [RL0]
    Given the Exari / CLM>NDB contract master Lookup API payload data is correct
    When NDB receives the Search parameter data
    Then the spike analysis is completed

