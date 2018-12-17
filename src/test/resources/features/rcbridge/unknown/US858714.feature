# Last updated on 
@MVP
@CLM_UAT
@EXARI-11765
@US858714
@MVP
@Priority_1
@releaseUnknown
@iterationUnknown
Feature: US858714 - Filter by Entity Relationship Type

  @TC565201
  @Automated
  @Functional
  @MVP
  @CLM_UAT
  @EXARI-11765
  Scenario: TC565201 - [RL0]
    Given I am a User with access to view and maintain Entity information
    When I want to Entity sub-parts based on relationship type
    Then I can search within an Entity by relationship type
    And the system displays related entities within the Entity matching that relationship type

