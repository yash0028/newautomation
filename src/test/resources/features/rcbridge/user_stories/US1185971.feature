# Last updated on 
@MVP
@CLM_UAT
@US1185971
@2018.PI03
Feature: US1185971 - Select Relationship Role

  @TC565779
  @Automated
  @Functional
  Scenario: TC565779 - [RL0]
    Given I am a User with access to maintain Entity information
    When I am creating an Entity
    Then I can select a Relationship Role to relate the Entity to another Entity, Provider, or Identifier

