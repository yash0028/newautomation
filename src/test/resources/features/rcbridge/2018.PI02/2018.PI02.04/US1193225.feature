# Last updated on 
@US1193225
@2018.PI02
@2018.PI02.04
@MVP
@PI02_Top3
@Parity
@releasePast
@iterationPast
Feature: US1193225 - [Unfinished] [Continued] Exari > NDB -  COSMOS Physician Panel - NDB/UNET Y Line

  @TC565554
  @Automated
  @Functional
  Scenario: TC565554 - [RL0]
    Given the NDB Process to load a corresponding UNET Y line when an NDB/COSMOS Physician Panel is loaded
    When the NDB/COSMOS panel data is received, NDB will also require the corresponding UNET Y line data
    Then NDB should load both the NDB/COSMOS panel and the corresponding NDB/UNET Y line

