# Last updated on 
@MVP
@CLM_UAT
@US948984
@MVP
@Plus
@Priority_1
@releaseUnknown
@iterationUnknown
Feature: US948984 - Update Relationship Roles

  @TC565030
  @Automated
  @Functional
  @MVP
  @CLM_UAT
  Scenario: TC565030 - [RL0]
    Given I am an Administrative User
    When I need to update an existing Relationship Role
    Then I can update an existing Relationship Role
    And I have the ability to cascade update to all records using that Relationship Role

