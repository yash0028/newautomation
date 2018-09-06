# Last updated on 
@MVP
@CLM_UAT
@EXARI-11399
@US858607
@2018.PI03
Feature: US858607 - Import Structure from Template

  @TC565628
  @Automated
  @Functional
  Scenario: TC565628 - [RL0]
    Given I am a User with access to maintain Entities
    When I want to load an Entity structure in template form into the Entity Management solution
    Then I can import the Entity structure into the Entity Management solution

