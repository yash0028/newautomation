# Last updated on 
@MVP
@CLM_UAT
@US858694
@2018.PI03
Feature: US858694 - Setup Relationship Types

  @TC565707
  @Automated
  @Functional
  Scenario: TC565707 - [RL0]
    Given I am an Administrative User
    When I want to setup a new Relationship Type
    Then I can setup a Relationship Type
    And Users can select that Relationship Type to define an Entity relationship

