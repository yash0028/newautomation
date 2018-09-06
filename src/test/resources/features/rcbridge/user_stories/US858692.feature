# Last updated on 
@MVP
@EXARI-11249
@CLM_UAT
@US858692
@2018.PI03
Feature: US858692 - Setup Entity Types

  @TC564971
  @Automated
  @Functional
  Scenario: TC564971 - [RL0]
    Given I am an Administrative User
    When I want to setup a new Entity Type
    Then I can setup an Entity Type
    And Users can select that Entity Type to define an Entity

