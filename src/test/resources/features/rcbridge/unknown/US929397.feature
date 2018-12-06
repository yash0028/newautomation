# Last updated on 
@CLM_UAT
@US929397
@releaseUnknown
@iterationUnknown
Feature: US929397 - Update Relationship Type

  @TC564811
  @Automated
  @Functional
  @CLM_UAT
  Scenario: TC564811 - [RL0]
    Given I am an Administrative User
    When I need to update an existing Relationship Type
    Then I can update an existing Relationship Type
    And I have the ability to cascade update to all records using that Relationship Type

