# Last updated on 2018-08-06T18:31:03.307Z
@Plus
Feature: F137658 - Exari EM - Approval Process

  @EXARI-11271
  Scenario: US1094099
    Given I am a User with Approval Authority
    When a User updates an Identifier and submits for approval
    Then I can approve the Identifier updates
    And the approved Identifier updates become active in the Entity Management Solution
    And I can reject the Identifier updates
    And the Identifier updates are routed back to the User for modifications

  @EXARI-11271
  @2018.PI03
  Scenario: US858605
    Given I am the Entity Management solution
    When A modification flows through the approval process
    Then I capture the date and time the modification was performed
    And I capture the User who performed the change
    And I capture the date and time the approval was granted
    And I capture the User with Approval Authority who approved the change

  @EXARI-11271
  @2018.PI03
  Scenario: US1094095
    Given I am a User with Approval Authority
    When a User updates an Entity and submits for approval
    Then I can approve the Entity updates
    And the approved Entity updates become active in the Entity Management Solution
    And I can reject the Entity updates
    And the Entity updates are routed back to the User for modifications

  @EXARI-11271
  Scenario: US1094105
    Given I am a User with Approval Authority
    When a User adds a Entity Demographic information and submits for approval
    Then I can approve the Entity Demographic information
    And the approved Entity Demographic information becomes active in the Entity Management Solution
    And I can reject the Entity Demographic information
    And the Entity Demographic information is routed back to the User for updates

  @EXARI-11271
  @2018.PI03
  Scenario: US1094104
    Given I am a User with Approval Authority
    When a User imports Entity relationships and submits for approval
    Then I can approve the Entity relationship import
    And the Entity relationships becomes active in the Entity Management Solution
    And I can reject the Entity relationship import
    And the Entity relationships are not added to the Entity Management Solution

  @EXARI-8603
  @2018.PI03
  Scenario: US950779
    Given I am the Entity Management Solution
    When A User sets up a new Entity
    Then I assign an Entity Workflow status to the new Entity

  @2018.PI03
  Scenario: US1094100
    Given I am a User with Approval Authority
    When a User inactivates an Identifier relationship with an Entity and submits for approval
    Then I can approve the Identifier relationship inactivation
    And the Identifier relationship becomes inactive in the Entity Management Solution
    And I can reject the Identifier relationship inactivation
    And the Identifier remains actively associated with the Entity in the Entity Management Solution

  @EXARI-11271
  @2018.PI03
  Scenario: US1094111
    Given I am a User with Approval Authority
    When a User updates a Entity Characteristic information and submits for approval
    Then I can approve the updated Entity Characteristic information
    And the approved Entity Characteristic information becomes active in the Entity Management Solution
    And I can reject the Entity Characteristic information updates
    And the Entity Characteristicinformation updates are routed back to the User for modifications

  @EXARI-11271
  Scenario: US1094113
    Given I am a User with Approval Authority
    When a User adds an Owner to an Identifier and submits for approval
    Then I can approve the Owner assignment
    And the approved Owner assignment becomes active in the Entity Management Solution
    And I can reject the Owner assignment
    And the Owner assignment is routed back to the User for updates

  @2018.PI03
  Scenario: US1094096
    Given I am a User with Approval Authority
    When a User inactivates an Entity and submits for approval
    Then I can approve the Entity inactivation
    And the Entity becomes inactive in the Entity Management Solution
    And I can reject the Entity inactivation
    And the Entity remains active in the Entity Management Solution

  @EXARI-11271
  @2018.PI03
  Scenario: US1094097
    Given I am a User with Approval Authority
    When a User adds an Identifier and submits for approval
    Then I can approve the Identifier
    And the approved Identifier becomes active in the Entity Management Solution
    And I can reject the Identifier
    And the Identifier is routed back to the User for updates

  Scenario: US1094114
    Given I am a User with Approval Authority
    When a User inactivates an Owner from an Identifier and submits for approval
    Then I can approve the Owner assignment inactivation
    And the Owner assignment becomes inactive in the Entity Management Solution
    And I can reject the Owner assignment inactivation
    And the Owner assignment inactivation is routed back to the User for updates

  @EXARI-11271
  @2018.PI03
  Scenario: US858604
    Given I am a User with Approval Authority
    When I receive an Entity modification that requires my approval
    Then I can review the proposed modification
    And I can approve the proposed modification
    And The Entity record is updated with the new value(s)

  Scenario: US1094101
    Given I am a User with Approval Authority
    When a User voids an Identifier and submits for approval
    Then I can approve the Identifier void
    And the Identifier is removed from the Entity Management Solution
    And I can reject the Identifier void
    And the Identifier remains active in the Entity Management Solution

  @EXARI-11271
  @2018.PI03
  Scenario: US1094094
    Given I am a User with Approval Authority
    When a User adds an Entity and submits for approval
    Then I can approve the Entity
    And the approved Entity becomes active in the Entity Management Solution
    And I can reject the Entity
    And the Entity is routed back to the User for updates

  @EXARI-11271
  Scenario: US1094106
    Given I am a User with Approval Authority
    When a User updates a Entity Demographic information and submits for approval
    Then I can approve the updated Entity Demographic information
    And the approved Entity Demographic information becomes active in the Entity Management Solution
    And I can reject the Entity Demographic information updates
    And the Entity Demographic informationupdates are routed back to the User for modifications

  @EXARI-11273
  @2018.PI03
  Scenario: US858606
    Given I am a User with access to view and maintain Entity information
    When I want to view approvals for modifications made to Entities
    Then I can view the time and date the modification was made
    And I can view the time and date the approval was granted
    And I can view the User who performed the change
    And I can view the User with Approval Authority who approved the change

  @CLM_UAT
  @EXARI-8603
  @2018.PI03
  Scenario: US950780
    Given I am the Entity Management Solution
    When A User updates an existing Entity
    Then I assign an Entity Workflow status to the updated Entity
    And the updated Entity enters the workflow approval process

  @2018.PI03
  Scenario: US1094112
    Given I am a User with Approval Authority
    When a User inactivates Entity Characteristic information and submits for approval
    Then I can approve the Entity Characteristic information inactivation
    And the Entity Characteristic information becomes inactive in the Entity Management Solution
    And I can reject the Entity Characteristic information inactivation
    And the Entity Characteristic information remains active in the Entity Management Solution

  Scenario: US1094107
    Given I am a User with Approval Authority
    When a User inactivates Entity Demographic information and submits for approval
    Then I can approve the Entity Demographic information inactivation
    And the Entity Demographic information becomes inactive in the Entity Management Solution
    And I can reject the Entity Demographic information inactivation
    And the Entity Demographic information remains active in the Entity Management Solution

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

  @EXARI-11271
  @2018.PI03
  Scenario: US858603
    Given I am a User with access to maintain Entity information
    When I make a change that requires approval
    Then the change flows through an approval process

  @EXARI-11271
  @2018.PI03
  Scenario: US1094102
    Given I am a User with Approval Authority
    When a User imports an Entity structure and submits for approval
    Then I can approve the Entity structure import
    And the Entity structure becomes active in the Entity Management Solution
    And I can reject the Entity structure import
    And the Entity is not added to the Entity Management Solution

  @EXARI-11271
  @2018.PI03
  Scenario: US1094109
    Given I am a User with Approval Authority
    When a User adds a Entity Characteristic information and submits for approval
    Then I can approve the Entity Characteristic information
    And the approved Entity Characteristic information becomes active in the Entity Management Solution
    And I can reject the Entity Characteristic information
    And the Entity Characteristic information is routed back to the User for updates

