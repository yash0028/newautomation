# Last updated on 
@CLM_UAT
@EXARI-11765
@US1119871
@releaseUnknown
@iterationUnknown
Feature: US1119871 - Filter by Entity Relationship Role

  @TC565471
  @Automated
  @Functional
  @CLM_UAT
  @EXARI-11765
  Scenario: TC565471 - [RL0]
    Given I am a User with access to view and maintain Entity information
    When I want to Entity sub-parts based on relationship role
    Then I can search within an Entity by relationship role
    And the system displays related child entities within the Entity matching that relationship role

