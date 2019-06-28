# Last updated on 
@US1807194
@2019.PI08
@releasePresent
@iterationUnknown
Feature: US1807194 - MAHP GHMO - IPA Decision Table GHMO Radiology Area

  @TC828084
  @Manual
  @Functional
  Scenario: TC828084 - [RL0]
    Given a valid contract includes the MAHP GHMO product
    When the UCM record includes at least one service location address
    Then the contract passes validation for MAHP GHMO product group

  @TC828087
  @Manual
  @Functional
  Scenario: TC828087 - [RL1]
    Given a valid contract includes the MAHP GHMO product
    When the UCM record does not include at least one service location address
    Then the contract does not pass validation for the MAHP GHMO product group
    And generates a Type 1 error message 'Unable to determine Radiology Area Cd'

  @TC828088
  @Manual
  @Functional
  Scenario: TC828088 - [RL2]
    Given a contract passes validation
    Then the zip code of the service location address is stored by OCM
    And the zip code is used to interrogate the RadiologyArea table
    And the RadiologyAreaCd provided in the response is stored in the OCM record

