# Last updated on 2018-05-02T13:32:31.106Z
@MVP
Feature: F182854 - Exari>NDB/COSMOS Physician Contracting Payload - Integration

  Scenario: US1087048
    Given The Physician contract is complete and correct within Exari
    When The contract is included in the Exari Physician Contract ETL to NDB
    Then NDB should load the contract to the NDB/COSMOS contract screen successfully inclusive of the NDB/UNET Y line

  @2018.PI01
  @2018.PI01.04
  Scenario: US1050232
    Given a the down stream mainframe system will need updates,
    Then a micro service.will need to be created to send data to the down stream mainframe.

  Scenario: US1016413
    Given the COSMOS Physician Panel is complete and correct within Exari
    When the Panel data is included in the Exari Physician Contract payload to NDB
    Then NDB should load the Panel data to the NDB/COSMOS Panel screen successfully

  Scenario: US1065335
    Given the Physician panel/ UNET Y line cancel is complete and correct within Exari
    When the panel/UNET Y line is included in the Exari Physician cancel payloadto NDB
    Then NDB should cancel the contract to the NDB/COSMOS and UNET Y line contract screen successfully

  Scenario: US1030162
    Given the Physician contract is complete and correct within Exari
    When the contract is included in the Exari Physician Contract Cancel Payload to NDB
    Then NDB should Cancel the Panel and the UNET PNC contract in the NDB/COSMOS Panel and PNC screen respectively

  Scenario: US1032741
    Given the Physician Panel is complete and correct within Exari
    When the Panel is included in the Exari Physician Contract payload to NDB
    Then NDB should load the panel to the NDB/COSMOS panel screen successfully

