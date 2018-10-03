# Last updated on 
@MVP
@EXARI-11267
@CLM_UAT
@US1089547
@MVP
@Plus
@Priority_1
@F183266
Feature: US1089547 - Inactivate Entity Identifier

  @TC565756
  @Automated
  @Functional
  @MVP
  @EXARI-11267
  @CLM_UAT
  @US1089547
  Scenario: TC565756 - [RL0]
    Given I am a User with access to maintain Entity information
    When I need to inactivate an Entity Identifier associated with an Entity
    Then I can inactivate the Entity Identifier associated with the Entity
    And the updated Entity enters the approval process workflow

