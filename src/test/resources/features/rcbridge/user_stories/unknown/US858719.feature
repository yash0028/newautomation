# Last updated on 
@MVP
@CLM_UAT
@EXARI-10530
@US858719
Feature: US858719 - Reduce Search Results by Filter Criteria

  @TC564500
  @Automated
  @Functional
  Scenario: TC564500 - [RL0]
    Given I am a User with access to view and maintain Entity information
    When I want to refine my search results
    Then I can amend my current search criteria with more filtering options
    And I do not have to rebuild my entire query from scratch

