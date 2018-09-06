# Last updated on 
@MVP
@EXARI-11249
@CLM_UAT
@US858693
@2018.PI03
Feature: US858693 - Setup Entity Type Definitions

  @TC565340
  @Automated
  @Functional
  Scenario: TC565340 - [RL0]
    Given I am an Administrative User
    When I set up a new Entity Type
    Then I can add a definition to the Entity Type

