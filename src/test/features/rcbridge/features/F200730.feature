# Last updated on 2018-06-21T20:39:17.726Z

Feature: F200730 - Approval Process

  @EXARI-11273
  @2018.PI03
  Scenario: US858606
    Given I am a User with access to view and maintain Entity information
    When I want to view approvals for modifications made to Entities
    Then I can view the time and date the modification was made
    And I can view the time and date the approval was granted
    And I can view the User who performed the change
    And I can view the User with Approval Authority who approved the change

  @EXARI-8603
  @2018.PI03
  Scenario: US950779
    Given I am the Entity Management Solution
    When A User sets up a new Entity
    Then I assign an Entity Workflow status to the new Entity

  @CLM_UAT
  @EXARI-8603
  @2018.PI03
  Scenario: US950780
    Given I am the Entity Management Solution
    When A User updates an existing Entity
    Then I assign an Entity Workflow status to the updated Entity
    And the updated Entity enters the workflow approval process

  @MVP
  @CLM_UAT
  @2018.PI03
  Scenario: US1170983
    Given I am a User with Approval Authority
    When a User reactivates an Entity
    Then I can approve the Entity reactivation
    And the Entity becomes active in the Entity Management Solution
    And I can reject the Entity reactivation
    And the Entity remains inactive in the Entity Management Solution

