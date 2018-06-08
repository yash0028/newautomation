# Last updated on 2018-06-07T05:26:01.743Z
@MVP
@Plus
@Priority_1
Feature: F137658 - Approve Entity Modifications

  @2018.PI03
  Scenario: US1094099
    Given I am a User with Approval Authority
    When a User updates an Identifier and submits for approval
    Then I can approve the Identifier updates
    Then And the approved Identifier updates become active in the Entity Management Solution
    Then And I can reject the Identifier updates
    Then And the Identifier updates are routed back to the User for modifications

  @2018.PI03
  Scenario: US858605
    Given I am the Entity Management solution
    When A modification flows through the approval process
    Then I capture the date the modification was performed
    Then And I capture the User who performed the change
    Then And I capture the date the approval was granted
    Then And I capture the User with Approval Authority who approved the change

  @2018.PI03
  Scenario: US1094095
    Given I am a User with Approval Authority
    When a User updates an Entity and submits for approval
    Then I can approve the Entity updates
    Then And the approved Entity updates become active in the Entity Management Solution
    Then And I can reject the Entity updates
    Then And the Entity updates are routed back to the User for modifications

  @2018.PI03
  Scenario: US1094105
    Given I am a User with Approval Authority
    When a User adds a Entity Demographic information and submits for approval
    Then I can approve the Entity Demographic information
    Then And the approved Entity Demographic information becomes active in the Entity Management Solution
    Then And I can reject the Entity Demographic information
    Then And the Entity Demographic information is routed back to the User for updates

  @2018.PI03
  Scenario: US1094104
    Given I am a User with Approval Authority
    When a User imports Entity relationships and submits for approval
    Then I can approve the Entity relationship import
    Then And the Entity relationships becomes active in the Entity Management Solution
    Then And I can reject the Entity relationship import
    Then And the Entity relationships are not added to the Entity Management Solution

  @2018.PI03
  Scenario: US1094100
    Given I am a User with Approval Authority
    When a User inactivates an Identifier and submits for approval
    Then I can approve the Identifier inactivation
    Then And the Identifier becomes inactive in the Entity Management Solution
    Then And I can reject the Identifier inactivation
    Then And the Identifier remains active in the Entity Management Solution

  @2018.PI03
  Scenario: US1094111
    Given I am a User with Approval Authority
    When a User updates a Entity Characteristic information and submits for approval
    Then I can approve the updated Entity Characteristic information
    Then And the approved Entity Characteristic information becomes active in the Entity Management Solution
    Then And I can reject the Entity Characteristic information updates
    Then And the Entity Characteristicinformation updates are routed back to the User for modifications

  @2018.PI03
  Scenario: US1094113
    Given I am a User with Approval Authority
    When a User adds an Owner to an Identifier and submits for approval
    Then I can approve the Owner assignment
    Then And the approved Owner assignment becomes active in the Entity Management Solution
    Then And I can reject the Owner assignment
    Then And the Owner assignment is routed back to the User for updates

  @2018.PI03
  Scenario: US1094096
    Given I am a User with Approval Authority
    When a User inactivates an Entity and submits for approval
    Then I can approve the Entity inactivation
    Then And the Entity becomes inactive in the Entity Management Solution
    Then And I can reject the Entity inactivation
    Then And the Entity remains active in the Entity Management Solution

  @2018.PI03
  Scenario: US1094097
    Given I am a User with Approval Authority
    When a User adds an Identifier and submits for approval
    Then I can approve the Identifier
    Then And the approved Identifier becomes active in the Entity Management Solution
    Then And I can reject the Identifier
    Then And the Identifier is routed back to the User for updates

  @2018.PI03
  Scenario: US1094114
    Given I am a User with Approval Authority
    When a User inactivates an Owner from an Identifier and submits for approval
    Then I can approve the Owner assignment inactivation
    Then And the Owner assignment becomes inactive in the Entity Management Solution
    Then And I can reject the Owner assignment inactivation
    Then And the Owner assignment inactivation is routed back to the User for updates

  @2018.PI03
  Scenario: US858604
    Given I am a User with Approval Authority
    When I receive an Entity modification that requires my approval
    Then I can review the proposed modification
    Then And I can approve the proposed modification
    Then And The Entity record is updated with the new value(s)

  @2018.PI03
  Scenario: US1094101
    Given I am a User with Approval Authority
    When a User voids an Identifier and submits for approval
    Then I can approve the Identifier void
    Then And the Identifier is removed from the Entity Management Solution
    Then And I can reject the Identifier void
    Then And the Identifier remains active in the Entity Management Solution

  @2018.PI03
  Scenario: US1094094
    Given I am a User with Approval Authority
    When a User adds an Entity and submits for approval
    Then I can approve the Entity
    Then And the approved Entity becomes active in the Entity Management Solution
    Then And I can reject the Entity
    Then And the Entity is routed back to the User for updates

  @2018.PI03
  Scenario: US1094106
    Given I am a User with Approval Authority
    When a User updates a Entity Demographic information and submits for approval
    Then I can approve the updated Entity Demographic information
    Then And the approved Entity Demographic information becomes active in the Entity Management Solution
    Then And I can reject the Entity Demographic information updates
    Then And the Entity Demographic informationupdates are routed back to the User for modifications

  @2018.PI03
  Scenario: US1094112
    Given I am a User with Approval Authority
    When a User inactivates Entity Characteristic information and submits for approval
    Then I can approve the Entity Characteristic information inactivation
    Then And the Entity Characteristic information becomes inactive in the Entity Management Solution
    Then And I can reject the Entity Characteristic information inactivation
    Then And the Entity Characteristic information remains active in the Entity Management Solution

  @2018.PI03
  Scenario: US1094107
    Given I am a User with Approval Authority
    When a User inactivates Entity Demographic information and submits for approval
    Then I can approve the Entity Demographic information inactivation
    Then And the Entity Demographic information becomes inactive in the Entity Management Solution
    Then And I can reject the Entity Demographic information inactivation
    Then And the Entity Demographic information remains active in the Entity Management Solution

  @2018.PI03
  Scenario: US858603
    Given I am a User with access to maintain Entity information
    When I make a change that requires approval
    Then the change flows through an approval process

  @2018.PI03
  Scenario: US1094102
    Given I am a User with Approval Authority
    When a User imports an Entity structure and submits for approval
    Then I can approve the Entity structure import
    Then And the Entity structure becomes active in the Entity Management Solution
    Then And I can reject the Entity structure import
    Then And the Entity is not added to the Entity Management Solution

  @2018.PI03
  Scenario: US1094109
    Given I am a User with Approval Authority
    When a User adds a Entity Characteristic information and submits for approval
    Then I can approve the Entity Characteristic information
    Then And the approved Entity Characteristic information becomes active in the Entity Management Solution
    Then And I can reject the Entity Characteristic information
    Then And the Entity Characteristic information is routed back to the User for updates

