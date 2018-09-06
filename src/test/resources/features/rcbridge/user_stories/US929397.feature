# Last updated on 
@MVP
@CLM_UAT
@US929397
@2018.PI03
Feature: US929397 - Update Relationship Type

  @TC564811
  @Automated
  @Functional
  Scenario: TC564811 - [RL0]
    Given I am an Administrative User
    When I need to update an existing Relationship Type
    Then I can update an existing Relationship Type
    And I have the ability to cascade update to all records using that Relationship Type

