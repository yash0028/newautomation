# Last updated on 
@EXARI-8603
@US950779
@2018.PI03
Feature: US950779 - Assign Entity Workflow Status for Added Entities

  @TC565807
  @Automated
  @Functional
  Scenario: TC565807 - [RL0]
    Given I am the Entity Management Solution
    When A User sets up a new Entity
    Then I assign an Entity Workflow status to the new Entity

