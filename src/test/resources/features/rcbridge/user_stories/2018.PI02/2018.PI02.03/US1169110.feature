# Last updated on 
@CLM_UAT
@US1169110
@2018.PI02
@2018.PI02.03
@MVP
@PI02_Top3
@Parity
@F171708
Feature: US1169110 - [Unfinished] Exari > NDB -  COSMOS Physician Panel - NDB/UNET Y Line

  @TC565299
  @Automated
  @Functional
  @CLM_UAT
  @US1169110
  @2018.PI02
  @2018.PI02.03
  Scenario: TC565299 - [RL0]
    Given the NDB Process to load a corresponding UNET Y line when an NDB/COSMOS Physician Panel is loaded
    When the NDB/COSMOS panel data is received, NDB will also require the corresponding UNET Y line data
    Then NDB should load both the NDB/COSMOS panel and the corresponding NDB/UNET Y line

