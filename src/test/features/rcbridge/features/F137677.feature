# Last updated on 2018-05-14T19:44:04.547Z
@MVP
@Plus
Feature: F137677 - Filter Results

  Scenario: US858720
    Given I am a User with access to view and maintain Entity information
    When I navigate into an item from a search results list
    Then I can return to my original search results list without rebuilding the query

  Scenario: US858719
    Given I am a User with access to view and maintain Entity information
    When I want to refine my search results
    Then I can amend my current search criteria with more filtering options
    Then And I do not have to rebuild my entire query from scratch

