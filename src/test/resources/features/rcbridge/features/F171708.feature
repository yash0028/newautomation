# Last updated on 
@MVP
@PI02_Top3
@Parity
@F171708
Feature: F171708 - Exari>NDB/COSMOS Physician Contracting Payload - CF Team

  @US1100763
  @2018.PI02
  Scenario: US1100763 - Exari > NDB - COSMOS Physician Panel - Stop Feeding
    Given the NDB Cosmos physician panel from Exari
    When the NDB/COSMOS panel data is received, NDB will load the Cosmos panel
    Then same panel data shouldn't feed to Cosmos

  @CLM_UAT
  @US1169110
  @2018.PI02
  Scenario: US1169110 - [Unfinished] Exari > NDB -  COSMOS Physician Panel - NDB/UNET Y Line
    Given the NDB Process to load a corresponding UNET Y line when an NDB/COSMOS Physician Panel is loaded
    When the NDB/COSMOS panel data is received, NDB will also require the corresponding UNET Y line data
    Then NDB should load both the NDB/COSMOS panel and the corresponding NDB/UNET Y line

  @US1030787
  @2018.PI02
  Scenario: US1030787 - [Continued] [Continued] Exari > NDB -  COSMOS Physician Panel - NDB/UNET Y Line
    Given the NDB Process to load a corresponding UNET Y line when an NDB/COSMOS Physician Panel is loaded
    When the NDB/COSMOS panel data is received, NDB will also require the corresponding UNET Y line data
    Then NDB should load both the NDB/COSMOS panel and the corresponding NDB/UNET Y line

  @US1082242
  @2018.PI02
  Scenario: US1082242 - Exari >NDB -  COSMOS Physician PPC - Analysis
    Given The Physician Panel is complete and correct within Exari
    When The contract is included in the Exari Physician Panel Payload to NDB
    Then NDB should load the Panel to the NDB/COSMOS Panel screen successfully

  @US1082278
  @2018.PI02
  Scenario: US1082278 - [Continued] Exari >NDB/COSMOS Physician PPC - API
    Given the Exari>NDB/COSMOS Physician Panel is complete and correct within Exari
    When the contract is included in the Exari Physician Contract Payload to NDB
    Then NDB should load the Panel to the NDB/COSMOS Panel screen successfully

  @CLM_UAT
  @US1148672
  @2018.PI02
  Scenario: US1148672 - [Unfinished] Exari >NDB/COSMOS Physician PPC - API
    Given the Exari>NDB/COSMOS Physician Panel is complete and correct within Exari
    When the contract is included in the Exari Physician Contract Payload to NDB
    Then NDB should load the Panel to the NDB/COSMOS Panel screen successfully

  @US1238399
  @2018.PI02
  Scenario: US1238399 - (Copy of) [Continued] [Continued] Exari > NDB -  COSMOS Physician Panel - NDB/UNET Y Line
    Given the NDB Process to load a corresponding UNET Y line when an NDB/COSMOS Physician Panel is loaded
    When the NDB/COSMOS panel data is received, NDB will also require the corresponding UNET Y line data
    Then NDB should load both the NDB/COSMOS panel and the corresponding NDB/UNET Y line

  @US1193225
  @2018.PI02
  Scenario: US1193225 - [Unfinished] [Continued] Exari > NDB -  COSMOS Physician Panel - NDB/UNET Y Line
    Given the NDB Process to load a corresponding UNET Y line when an NDB/COSMOS Physician Panel is loaded
    When the NDB/COSMOS panel data is received, NDB will also require the corresponding UNET Y line data
    Then NDB should load both the NDB/COSMOS panel and the corresponding NDB/UNET Y line

