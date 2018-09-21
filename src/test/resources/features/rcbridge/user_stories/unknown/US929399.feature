# Last updated on 
@MVP
@EXARI-11249
@CLM_UAT
@US929399
Feature: US929399 - Update Identifier Type

  @TC565615
  @Automated
  @Functional
  Scenario: TC565615 - [RL0]
    Given I am an Administrative User
    When I need to update an existing Identifier Type
    Then I can update an existing Identifier Type
    And I have the ability to cascade update to all records using that Identifier Type

