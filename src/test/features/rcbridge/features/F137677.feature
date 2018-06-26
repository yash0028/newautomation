# Last updated on 2018-06-25T18:25:42.480Z
@MVP
@Plus
@Priority_1
Feature: F137677 - Filter Results

  @MVP
  @CLM_UAT
  @EXARI-11274
  @2018.PI03
  Scenario: US858720
    Given I am a User with access to view and maintain Entity information
    When I navigate into an item from a search results list
    Then I can return to my original search results list without rebuilding the query

  @MVP
  @CLM_UAT
  @EXARI-11274
  @2018.PI03
  Scenario: US858719
    Given I am a User with access to view and maintain Entity information
    When I want to refine my search results
    Then I can amend my current search criteria with more filtering options
    And I do not have to rebuild my entire query from scratch

