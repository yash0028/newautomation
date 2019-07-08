# Last updated on 
@US1807194
@2019.PI08
@2019.PI08.02
@releasePresent
@iterationFuture
Feature: US1807194 - CMD Rules - MAHP GHMO - Radiology Area Code

  @TC828084
  @Manual
  @Functional
  Scenario: TC828084 - [RL0]
    Given a valid contract includes the MAHP GHMO product
    When the UCM record includes at least one service location address
    Then the zip code of the counterparty service address is stored in OCM
    And the zip code is used to interrogate the RadiologyAreaCd table
    And the RadiologyAreaCd returned from the table is stored as part of the Contract OCM
    And the process is repeated for each distinct service location address of the Contract OCM

  @RC_unlinked
  @TC828087
  @Manual
  @Functional
  Scenario: TC828087 - [RL1]
    Given a valid contract includes the MAHP GHMO product
    When the UCM record does not include at least one service location address
    Then the contract does not pass validation for the MAHP GHMO product group
    And generates a Type 1 error message 'Unable to determine Radiology Area Cd'

  @RC_unlinked
  @TC828088
  @Manual
  @Functional
  Scenario: TC828088 - [RL2]
    Given a contract passes validation
    Then the zip code of the service location address is stored by OCM
    And the zip code is used to interrogate the RadiologyArea table
    And the RadiologyAreaCd provided in the response is stored in the OCM record

