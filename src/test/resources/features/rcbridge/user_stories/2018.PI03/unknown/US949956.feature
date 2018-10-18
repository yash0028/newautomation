# Last updated on 
@MVP
@CLM_UAT
@US949956
@2018.PI03
@releasePast
@iterationUnknown
Feature: US949956 - Setup Identifier Relationship Type

  @TC565341
  @Automated
  @Functional
  @MVP
  @CLM_UAT
  @US949956
  @2018.PI03
  Scenario: TC565341 - [RL0]
    Given I am an Administrative User
    When I want to setup a new Identifier Relationship Type
    Then I can setup an Identifier Relationship Type
    And Users can select that Identifier Relationship Type to define an Entity relationship

