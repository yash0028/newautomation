# Last updated on 
@MVP
@CLM_UAT
@US948983
@2018.PI03
Feature: US948983 - Setup Relationship Roles

  @TC564986
  @Automated
  @Functional
  Scenario: TC564986 - [RL0]
    Given I am an Administrative User
    When I want to setup a new Relationship Role
    Then I can setup an Relationship Role
    And Users can select that Relationship Role to define an Entity relationship

