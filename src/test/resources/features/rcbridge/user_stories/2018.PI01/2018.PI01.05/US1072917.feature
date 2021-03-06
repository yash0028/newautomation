# Last updated on 
@CLM_UAT
@US1072917
@2018.PI01
@2018.PI01.05
@releasePast
@iterationPast
Feature: US1072917 - Exari>NDB UNET Physician Payload Data Field Mapping  - API

  @TC701670
  @Manual
  @Functional
  @CLM_UAT
  Scenario: TC701670 - [RL0]
    Given The Physician contract is complete and correct within Exari
    When The contract is included in the Exari Physician Contract Payload to NDB
    Then NDB should load the Physician contract to the 'E' PNC contract screen successfully within NDB

