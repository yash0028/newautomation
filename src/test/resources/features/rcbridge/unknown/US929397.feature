# Last updated on 
@CLM_UAT
@US929397
@releaseUnknown
@iterationUnknown
Feature: US929397 - Update Relationship

  @TC564811
  @Automated
  @Functional
  @CLM_UAT
  Scenario: TC564811 - [RL0]
    Given I am an Administrative User
    When I need to update an existing Relationship option
    Then I can update an existing Relationship option
    And I have the ability to cascade update to all records using that Relationship option

