# Last updated on 
@MVP
@EXARI-11249
@CLM_UAT
@US929394
Feature: US929394 - Update Entity Type

  @TC564638
  @Automated
  @Functional
  Scenario: TC564638 - [RL0]
    Given I am an Administrative User
    When I need to update an existing Entity Type
    Then I can update an existing Entity Type
    And I have the ability to cascade update to all records using that Entity Type

