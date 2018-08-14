# Last updated on 
@MVP
@Parity
@Non-Deliverable
@7.5_Release
@F185542
Feature: F185542 - Create a Mass Action Project

  @Non-Deliverable
  @7.5_Release
  @MVP
  @Plus
  @EXARI-11651
  @EXARI-11843
  @CLM_Exari
  @US1185931
  Scenario: US1185931 - Search for specific provider status
    Given I have access to a Mass Action Project
    When the project has started
    Then I can search for a provider within the Project
    And I can search for a contract within the Project

  @MVP
  @EXARI-11501
  @CLM_Exari
  @Parity
  @Non-Deliverable
  @7.5_Release
  @US1098379
  Scenario: US1098379 - Initiate Mass Action from UI
    Given I am a user with access to the Mass Actions UI
    When I want to add amendments to existing contracts
    Then I can initiate a Mass Action Project
    And I can select a Definition
    And I can input the Project Title
    And I can input a Project Description
    And I can select a Strategy

  @MVP
  @EXARI-11548
  @CLM_Exari
  @Parity
  @Non-Deliverable
  @7.5_Release
  @US1098395
  Scenario: US1098395 - Save in Progress Projects
    Given a User has initiated a Mass Actions Project
    When the Project requirements cannot be completed within a single work session
    Then the User will be able to Save the in-progress project
    And the in-progress project will be listed on the User's Activity Manager queue
    And the in-progress project can be restarted from the User's queue

  @EXARI-11614
  @Non-Deliverable
  @7.5_Release
  @MVP
  @Plus
  @CLM_Exari
  @Parity
  @US1185914
  Scenario: US1185914 - View contract status summary
    Given I have access to an active Mass Action Project
    When I access the contract-level status
    Then I can view a listing of the contracts associated with the Mass Action Project
    And I can see their status as described above
    And I can "drill down" to a provider-level status

  @MVP
  @Plus
  @CLM_Exari
  @Non-Deliverable
  @US1186294
  Scenario: US1186294 - Display project association during database searches
    Given I have searched for a provider
    When the provider is a part of a Mass Action Project
    Then the search results will indicate the provider's involvement with the Mass Action Project

  @MVP
  @EXARI-11507
  @CLM_Exari
  @Parity
  @Non-Deliverable
  @7.5_Release
  @US1098392
  Scenario: US1098392 - Define/derive project status
    Given the User has identified target providers
    When a Mass Action Project is in progress
    Then Exari will logically derive status of the Project
    And project-level status will be reportable

  @MVP
  @CLM_Exari
  @Parity
  @Non-Deliverable
  @EXARI-11545
  @7.5_Release
  @US1185895
  Scenario: US1185895 - View project status summary
    Given I have access to an active Mass Action Project
    When I select to view the project status
    Then I can view the project details as described above
    And I can see the status as described above
    And I can "drill down" to a contract-level status

  @EXARI-11614
  @Non-Deliverable
  @7.5_Release
  @MVP
  @Plus
  @CLM_Exari
  @Parity
  @US1186351
  Scenario: US1186351 - View provider status summary
    Given I have access to an active Mass Action Project
    When I access the provider-level status
    Then I can view a listing of the providers associated with the Mass Action Project
    And I can see their status as described above

  @MVP
  @Plus
  @CLM_Exari
  @Parity
  @Non-Deliverable
  @US1098393
  Scenario: US1098393 - Derive status of included providers
    Given the User has identified target providers
    When a Mass Action Project is in progress
    Then Exari will logically derive status for included providers
    And provider-specific status will be reportable

