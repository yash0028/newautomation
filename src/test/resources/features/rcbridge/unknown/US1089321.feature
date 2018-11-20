# Last updated on 
@EXARI-11267
@EXARI-11270
@EXARI-11249
@CLM_UAT
@US1089321
@Plus
@Priority_1
@releaseUnknown
@iterationUnknown
Feature: US1089321 - Prevent Inactive Entity Maintenance

  @TC565310
  @Automated
  @Functional
  @EXARI-11267
  @EXARI-11270
  @EXARI-11249
  @CLM_UAT
  Scenario: TC565310 - [RL0]
    Given I am a User with access to maintain Entities
    When I want to modify an Entity that is currently inactive
    Then I am not able to write new contracts to the Entity
    And I am not able to assign new provider relationships to the Entity
    And I am not able to assign new Entity relationships to the Entity
    And I am not able to assign new Identifiers to the Entity

