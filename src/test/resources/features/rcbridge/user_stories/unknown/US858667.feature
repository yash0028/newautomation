# Last updated on 
@MVP
@CLM_UAT
@EXARI-11696
@US858667
@MVP
@Plus
@Priority_1
@F137671
Feature: US858667 - Remove Entity Relationship

  @TC564583
  @Automated
  @Functional
  @MVP
  @CLM_UAT
  @EXARI-11696
  @US858667
  Scenario: TC564583 - [RL0]
    Given I am a User with access to maintain Entity information
    When I need to end a relationship between two Entities
    Then I can remove the relationship between two Entities

