# Last updated on 
@MVP
@CLM_UAT
@EXARI-11696
@US858666
@MVP
@Plus
@Priority_1
@F137671
@releaseUnknown
@iterationUnknown
Feature: US858666 - Update Entity Relationship

  @TC564502
  @Automated
  @Functional
  @MVP
  @CLM_UAT
  @EXARI-11696
  @US858666
  Scenario: TC564502 - [RL0]
    Given I am a User with access to maintain Entity information
    When I need to change a relationship between two Entities
    Then I can select a new Relationship Role for an Entity in the relationship
    And I can select a new Relationship Type for an Entity in the relationship
