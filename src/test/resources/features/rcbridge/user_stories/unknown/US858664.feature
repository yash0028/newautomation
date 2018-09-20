# Last updated on 
@MVP
@CLM_UAT
@EXARI-11696
@US858664
Feature: US858664 - Add Entity Relationship Role

  @TC564683
  @Automated
  @Functional
  Scenario: TC564683 - [RL0]
    Given I am a User with access to maintain Entity information
    When I am adding a relationship between two Entities
    Then I can define the Entity Relationship Role of each Entity in the relationship

