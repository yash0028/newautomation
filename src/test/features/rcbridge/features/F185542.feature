# Last updated on 2018-05-02T19:48:00.555Z
@MVP
Feature: F185542 - Create a Mass Action Project

  Scenario: US1098379
    Given I am a user with access to the Mass Actions UI
    When I want to add amendments to existing contracts
    Then I can initiate a Mass Action Project
    Then And select the project type

  Scenario: US1098380
    Given the user has initiated a Mass Action project
    When they have selected a transaction type
    Then Exari will produce the applicable Mass Action Templates
    Then And the User can select a single template for the Mass Action project

  Scenario: US1098395
    Given a User has initiated a Mass Actions Project
    When the Project requirements cannot be completed within a single work session
    Then the User will be able to Save the in-progress project
    Then And the in-progress project will be listed on the User's Activity Manager queue
    Then And the in-progress project can be restarted from the User's queue

  Scenario: US1098392
    Given the User has identified target providers
    When a Mass Action Project is in progress
    Then Exari will logically derive status of the Project
    Then And project-level status will be reportable

  Scenario: US1098393
    Given the User has identified target providers
    When a Mass Action Project is in progress
    Then Exari will logically derive status for included providers
    Then And provider-specific status will be reportable
