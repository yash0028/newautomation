# Last updated on 2018-05-09T13:28:40.359Z
@MVP
@PI02_Top3
Feature: F171708 - Exari>NDB/COSMOS Physician Contracting Payload - CF Team

  @2018.PI02
  @2018.PI02.03
  Scenario: US1100763
    Given the NDB Cosmos physician panel from Exari
    When the NDB/COSMOS panel data is received, NDB will load the Cosmos panel
    Then same panel data shouldn't feed to Cosmos

  @2018.PI02
  @2018.PI02.03
  Scenario: US1030787
    Given the NDB Process to load a corresponding UNET Y line when an NDB/COSMOS Physician Panel is loaded
    When the NDB/COSMOS panel data is received, NDB will also require the corresponding UNET Y line data
    Then NDB should load both the NDB/COSMOS panel and the corresponding NDB/UNET Y line

  @2018.PI02
  @2018.PI02.01
  Scenario: US1082242
    Given The Physician Panel is complete and correct within Exari
    When The contract is included in the Exari Physician Panel Payload to NDB
    Then NDB should load the Panel to the NDB/COSMOS Panel screen successfully

  @2018.PI02
  @2018.PI02.02
  Scenario: US1082278
    Given the Exari&gt;NDB/COSMOS Physician Panel is complete and correct within Exari
    When the contract is included in the Exari Physician Contract Payload to NDB
    Then NDB should load the Panel to the NDB/COSMOS Panel screen successfully

