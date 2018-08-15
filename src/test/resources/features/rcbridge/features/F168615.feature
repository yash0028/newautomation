# Last updated on 
@MVP
@F168615
Feature: F168615 - Integrate Exari with one central UHG location (Part 1)

  @CLM_UAT
  @US1072917
  @2018.PI01
  Scenario: US1072917 - Exari>NDB UNET Physician Payload Data Field Mapping  - API
    Given The Physician contract is complete and correct within Exari
    When The contract is included in the Exari Physician Contract Payload to NDB
    Then NDB should load the Physician contract to the 'E' PNC contract screen successfully within NDB

