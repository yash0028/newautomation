# Last updated on 
@MVP
@EXARI-11267
@EXARI-11270
@EXARI-11249
@CLM_UAT
@US1089321
@MVP
@Plus
@Priority_1
@F152967
Feature: US1089321 - Prevent Inactive Entity Maintenance

  @TC565310
  @Automated
  @Functional
  @MVP
  @EXARI-11267
  @EXARI-11270
  @EXARI-11249
  @CLM_UAT
  @US1089321
  Scenario: TC565310 - [RL0]
    Given I am a User with access to maintain Entities
    When I want to modify an Entity that is currently inactive
    Then I am not able to write new contracts to the Entity
    And I am not able to assign new provider relationships to the Entity
    And I am not able to assign new Entity relationships to the Entity
    And I am not able to assign new Identifiers to the Entity

