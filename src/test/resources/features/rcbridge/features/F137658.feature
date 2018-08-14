# Last updated on 
@Plus
@F137658
Feature: F137658 - Exari EM - Approval Process

  @EXARI-11271
  @US1094099
  Scenario: US1094099 - Approve Updated Identifier
    Given I am a User with Approval Authority
    When a User updates an Identifier and submits for approval
    Then I can approve the Identifier updates
    And the approved Identifier updates become active in the Entity Management Solution
    And I can reject the Identifier updates
    And the Identifier updates are routed back to the User for modifications

  @EXARI-11271
  @US858605
  @2018.PI03
  Scenario: US858605 - Capture Approval Time Lining History
    Given I am the Entity Management solution
    When A modification flows through the approval process
    Then I capture the date and time the modification was performed
    And I capture the User who performed the change
    And I capture the date and time the approval was granted
    And I capture the User with Approval Authority who approved the change

  @EXARI-11271
  @US1094095
  @2018.PI03
  Scenario: US1094095 - Approve Updated Entity
    Given I am a User with Approval Authority
    When a User updates an Entity and submits for approval
    Then I can approve the Entity updates
    And the approved Entity updates become active in the Entity Management Solution
    And I can reject the Entity updates
    And the Entity updates are routed back to the User for modifications

  @EXARI-11271
  @US1094105
  Scenario: US1094105 - Approve Added Entity Demographic Info
    Given I am a User with Approval Authority
    When a User adds a Entity Demographic information and submits for approval
    Then I can approve the Entity Demographic information
    And the approved Entity Demographic information becomes active in the Entity Management Solution
    And I can reject the Entity Demographic information
    And the Entity Demographic information is routed back to the User for updates

  @EXARI-11271
  @US1094104
  @2018.PI03
  Scenario: US1094104 - Approve Imported Entity Relationships
    Given I am a User with Approval Authority
    When a User imports Entity relationships and submits for approval
    Then I can approve the Entity relationship import
    And the Entity relationships becomes active in the Entity Management Solution
    And I can reject the Entity relationship import
    And the Entity relationships are not added to the Entity Management Solution

  @EXARI-8603
  @US950779
  @2018.PI03
  Scenario: US950779 - Assign Entity Workflow Status for Added Entities
    Given I am the Entity Management Solution
    When A User sets up a new Entity
    Then I assign an Entity Workflow status to the new Entity

  @US1094100
  @2018.PI03
  Scenario: US1094100 - Approve Inactivated Identifier Relationship with Entity
    Given I am a User with Approval Authority
    When a User inactivates an Identifier relationship with an Entity and submits for approval
    Then I can approve the Identifier relationship inactivation
    And the Identifier relationship becomes inactive in the Entity Management Solution
    And I can reject the Identifier relationship inactivation
    And the Identifier remains actively associated with the Entity in the Entity Management Solution

  @EXARI-11271
  @US1094111
  @2018.PI03
  Scenario: US1094111 - Approve Updated Entity Characteristic Info
    Given I am a User with Approval Authority
    When a User updates a Entity Characteristic information and submits for approval
    Then I can approve the updated Entity Characteristic information
    And the approved Entity Characteristic information becomes active in the Entity Management Solution
    And I can reject the Entity Characteristic information updates
    And the Entity Characteristicinformation updates are routed back to the User for modifications

  @EXARI-11271
  @US1094113
  Scenario: US1094113 - Approve Identifier Owner Assignment
    Given I am a User with Approval Authority
    When a User adds an Owner to an Identifier and submits for approval
    Then I can approve the Owner assignment
    And the approved Owner assignment becomes active in the Entity Management Solution
    And I can reject the Owner assignment
    And the Owner assignment is routed back to the User for updates

  @US1094096
  @2018.PI03
  Scenario: US1094096 - Approve Inactivated Entity
    Given I am a User with Approval Authority
    When a User inactivates an Entity and submits for approval
    Then I can approve the Entity inactivation
    And the Entity becomes inactive in the Entity Management Solution
    And I can reject the Entity inactivation
    And the Entity remains active in the Entity Management Solution

  @EXARI-11271
  @US1094097
  @2018.PI03
  Scenario: US1094097 - Approve Added Identifier
    Given I am a User with Approval Authority
    When a User adds an Identifier and submits for approval
    Then I can approve the Identifier
    And the approved Identifier becomes active in the Entity Management Solution
    And I can reject the Identifier
    And the Identifier is routed back to the User for updates

  @US1094114
  Scenario: US1094114 - Approve Identifier Owner Inactivation
    Given I am a User with Approval Authority
    When a User inactivates an Owner from an Identifier and submits for approval
    Then I can approve the Owner assignment inactivation
    And the Owner assignment becomes inactive in the Entity Management Solution
    And I can reject the Owner assignment inactivation
    And the Owner assignment inactivation is routed back to the User for updates

  @EXARI-11271
  @US858604
  @2018.PI03
  Scenario: US858604 - Approve Entity Updates
    Given I am a User with Approval Authority
    When I receive an Entity modification that requires my approval
    Then I can review the proposed modification
    And I can approve the proposed modification
    And The Entity record is updated with the new value(s)

  @US1094101
  Scenario: US1094101 - Approve Voided Identifier
    Given I am a User with Approval Authority
    When a User voids an Identifier and submits for approval
    Then I can approve the Identifier void
    And the Identifier is removed from the Entity Management Solution
    And I can reject the Identifier void
    And the Identifier remains active in the Entity Management Solution

  @EXARI-11271
  @US1094094
  @2018.PI03
  Scenario: US1094094 - Approve Added Entity
    Given I am a User with Approval Authority
    When a User adds an Entity and submits for approval
    Then I can approve the Entity
    And the approved Entity becomes active in the Entity Management Solution
    And I can reject the Entity
    And the Entity is routed back to the User for updates

  @EXARI-11271
  @US1094106
  Scenario: US1094106 - Approve Updated Entity Demographic Info
    Given I am a User with Approval Authority
    When a User updates a Entity Demographic information and submits for approval
    Then I can approve the updated Entity Demographic information
    And the approved Entity Demographic information becomes active in the Entity Management Solution
    And I can reject the Entity Demographic information updates
    And the Entity Demographic informationupdates are routed back to the User for modifications

  @EXARI-11273
  @US858606
  @2018.PI03
  Scenario: US858606 - View Approval Time Lining History
    Given I am a User with access to view and maintain Entity information
    When I want to view approvals for modifications made to Entities
    Then I can view the time and date the modification was made
    And I can view the time and date the approval was granted
    And I can view the User who performed the change
    And I can view the User with Approval Authority who approved the change

  @CLM_UAT
  @EXARI-8603
  @US950780
  @2018.PI03
  Scenario: US950780 - Assign Entity Workflow Status for Updated Entities
    Given I am the Entity Management Solution
    When A User updates an existing Entity
    Then I assign an Entity Workflow status to the updated Entity
    And the updated Entity enters the workflow approval process

  @US1094112
  @2018.PI03
  Scenario: US1094112 - Approve Inactivated Entity Characteristic Info
    Given I am a User with Approval Authority
    When a User inactivates Entity Characteristic information and submits for approval
    Then I can approve the Entity Characteristic information inactivation
    And the Entity Characteristic information becomes inactive in the Entity Management Solution
    And I can reject the Entity Characteristic information inactivation
    And the Entity Characteristic information remains active in the Entity Management Solution

  @US1094107
  Scenario: US1094107 - Approve Inactivated Entity Demographic Info
    Given I am a User with Approval Authority
    When a User inactivates Entity Demographic information and submits for approval
    Then I can approve the Entity Demographic information inactivation
    And the Entity Demographic information becomes inactive in the Entity Management Solution
    And I can reject the Entity Demographic information inactivation
    And the Entity Demographic information remains active in the Entity Management Solution

  @MVP
  @CLM_UAT
  @US1170983
  @2018.PI03
  Scenario: US1170983 - Approve Reactivated Entity
    Given I am a User with Approval Authority
    When a User reactivates an Entity
    Then I can approve the Entity reactivation
    And the Entity becomes active in the Entity Management Solution
    And I can reject the Entity reactivation
    And the Entity remains inactive in the Entity Management Solution

  @EXARI-11271
  @US858603
  @2018.PI03
  Scenario: US858603 - Follow Approval Process
    Given I am a User with access to maintain Entity information
    When I make a change that requires approval
    Then the change flows through an approval process

  @EXARI-11271
  @US1094102
  @2018.PI03
  Scenario: US1094102 - Approve Imported Entity Structure
    Given I am a User with Approval Authority
    When a User imports an Entity structure and submits for approval
    Then I can approve the Entity structure import
    And the Entity structure becomes active in the Entity Management Solution
    And I can reject the Entity structure import
    And the Entity is not added to the Entity Management Solution

  @EXARI-11271
  @US1094109
  @2018.PI03
  Scenario: US1094109 - Approve Added Entity Characteristic Info
    Given I am a User with Approval Authority
    When a User adds a Entity Characteristic information and submits for approval
    Then I can approve the Entity Characteristic information
    And the approved Entity Characteristic information becomes active in the Entity Management Solution
    And I can reject the Entity Characteristic information
    And the Entity Characteristic information is routed back to the User for updates

