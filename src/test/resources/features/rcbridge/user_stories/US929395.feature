# Last updated on 
@MVP
@EXARI-11249
@CLM_UAT
@US929395
@2018.PI03
Feature: US929395 - Update Entity Type Definition

  @TC564647
  @Automated
  @Functional
  Scenario: TC564647 - [RL0]
    Given I am an Administrative User
    When I need to update an existing Entity Type Definition
    Then I can view all active and inactive existing Entity Type Definitions
    And Active and Inactive Entity Type Definitions are visibly differentiated
    And I can update an existing Entity Type Definition
    And I have the ability to cascade update to all records using that Entity Type Definition

