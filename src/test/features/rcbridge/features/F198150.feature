# Last updated on 2018-06-18T17:57:35.918Z

Feature: F198150 - Removed stories

  @MVP
  @EXARI-11271
  @2018.PI03
  Scenario: US1094099
    Given I am a User with Approval Authority
    When a User updates an Identifier and submits for approval
    Then I can approve the Identifier updates
    And the approved Identifier updates become active in the Entity Management Solution
    And I can reject the Identifier updates
    And the Identifier updates are routed back to the User for modifications

  @MVP
  @EXARI-11271
  @2018.PI03
  Scenario: US1094105
    Given I am a User with Approval Authority
    When a User adds a Entity Demographic information and submits for approval
    Then I can approve the Entity Demographic information
    And the approved Entity Demographic information becomes active in the Entity Management Solution
    And I can reject the Entity Demographic information
    And the Entity Demographic information is routed back to the User for updates

  @MVP
  @2018.PI03
  Scenario: US1089924
    Given I am the Entity Management Solution
    When a User updates an Identifier to an Entity
    Then I check the Identifier for the presence of an Owner
    And I display Owner associated to the Identifier
    And the User must select the existing Owner for the Identifier or assign new Owner if not present

  @MVP
  @EXARI-11249
  @2018.PI03
  Scenario: US1089668
    Given I am the Entity Management Solution
    When a User updates an Identifier on an Entity
    Then I perform field validation to ensure the Identifier was entered in the correct format based on Identifier Type selected
    And I must perform a duplicate check on the Identifier

  @MVP
  @EXARI-11271
  @2018.PI03
  Scenario: US1094113
    Given I am a User with Approval Authority
    When a User adds an Owner to an Identifier and submits for approval
    Then I can approve the Owner assignment
    And the approved Owner assignment becomes active in the Entity Management Solution
    And I can reject the Owner assignment
    And the Owner assignment is routed back to the User for updates

  @MVP
  @EXARI-11249
  @2018.PI03
  Scenario: US858621
    Given I am a User with access to maintain Entities
    When I want to add demographic information to an Entity
    Then I can add Entity demographic information to the Entity
    And the added Entity demographic information enters the approval process workflow

  @MVP
  @2018.PI03
  Scenario: US922831
    Given I am a User with access to maintain Entity information
    When I want to inactivate demographic information on an Entity
    Then I can inactivate Entity demographic information on the Entity
    And the inactivated Entity demographic information enters the approval process workflow

  @MVP
  @EXARI-11249
  @2018.PI03
  Scenario: US858622
    Given I am a User with access to maintain Entity information
    When I want to update demographic information on an Entity
    Then I can update Entity demographic information on the Entity
    And the updated Entity demographic information enters the approval process workflow

  @2018.PI03
  Scenario: US1114661
    Given I am the Entity Management Solution
    When a User attempts to add a second Owner to an Organizational Unit
    Then the User can change the Organizational Unit Owner to a different Owner
    And the Organizational Unit can not have two active Owners at the same time

  @2018.PI03
  Scenario: US1114656
    Given I am the Entity Management Solution
    When a User attempts to add a second Owner to a TIN
    Then the User can change the TIN Owner to a different Owner
    And the TIN can not have two active Owners at the same time

  @MVP
  @2018.PI03
  Scenario: US1094101
    Given I am a User with Approval Authority
    When a User voids an Identifier and submits for approval
    Then I can approve the Identifier void
    And the Identifier is removed from the Entity Management Solution
    And I can reject the Identifier void
    And the Identifier remains active in the Entity Management Solution

  @2018.PI03
  Scenario: US1089508
    Given I am a User
    When I need to update an Entity Address
    Then I have the ability to update Entity Address
    And the updated Entity enters the approval process workflow

  @2018.PI03
  Scenario: US1089526
    Given I am the Entity Management Solution
    When A User updates an Entity Address
    Then I perform a duplicate check on Entity Address
    And I display duplicates
    And User has ability to override duplicate or select from the potential duplicate list

  @MVP
  @EXARI-11249
  @2018.PI03
  Scenario: US1089624
    Given I am the Entity Management Solution
    When a User adds an Identifier to an Entity
    Then I perform field validation to ensure the Identifier was entered in the correct format based on Identifier Type selected
    And I perform a duplicate check on the new Identifier

  @MVP
  @2018.PI03
  Scenario: US1089630
    Given I am the Entity Management Solution
    When a User adds an Identifier to an Entity
    Then I check the Identifier for the presence of an Owner
    And I display Owner associated to the Identifier
    And the User must select the existing Owner for the Identifier or assign new Owner if not present

  @MVP
  @2018.PI03
  Scenario: US1089633
    Given I am a User with access to maintain Entity information
    When I want to add an Owner to an Identifier
    Then I can access the Identifier
    And I can search for an Entity to establish as the new Owner
    And Entities matching my search are displayed
    And I can select an Entity from search results to establish as the new Owner
    And I can enter the effective date for the new Identifier Owner
    And Effective date can be in the future or retroactive
    And Standard field validation rules applied
    And An Identifier must only have one active Owner at a time
    And the updated Identifier enters the approval process workflow

  @MVP
  @EXARI-11274
  @2018.PI03
  Scenario: US1089525
    Given I am the Entity Management Solution
    When A User updates an Entity Identifier
    Then I perform a duplicate check on Entity Identifier
    And I display duplicates
    And User must select existing Entity Identifier from the duplicate list or keep current Entity Identifier if no duplicates

  @MVP
  @2018.PI03
  Scenario: US950017
    Given I am a User with access to maintain Entity information
    When I need to void the relationship between an Identifier and an Entity
    Then I can enter an end date to terminate the relationship between the Identifier and the Entity

  @MVP
  @2018.PI03
  Scenario: US955716
    Given I am a User with access to maintain Entity information
    When I need to change the Owner of an Identifier
    Then I must access the Identifier
    And I can inactivate the current Owner
    And Inactivation date can be in the future or retroactive
    And Standard field validation rules apply
    And I must select a new Owner

  @MVP
  @EXARI-11274
  @2018.PI03
  Scenario: US1089628
    Given I am the Entity Management Solution
    When a User updates an Identifier to an Entity
    Then I check for duplicate Identifiers
    And if Identifier exists, the User receives a notification to use existing Identifier
    And if Identifier does not exist, the User is allowed to proceed and create new
    And the User is required to assign an Owner to the Identifier

  @MVP
  @EXARI-11274
  @2018.PI03
  Scenario: US1089625
    Given I am the Entity Management Solution
    When a User adds an Identifier to an Entity
    And I have performed field validation
    Then I check for duplicate Identifiers
    And if Identifier exists, the User receives a notification to use existing Identifier
    And if Identifier does not exist, the User is allowed to proceed and create new
    And the User is required to assign an Owner to the Identifier

  @2018.PI03
  Scenario: US922827
    Given I am a User with access to maintain Entity information
    When I need to inactivate an Address listed on an Entity
    Then I can inactivate the Address for an Entity
    And the updated Entity enters the approval process workflow

  @MVP
  @2018.PI03
  Scenario: US1094114
    Given I am a User with Approval Authority
    When a User inactivates an Owner from an Identifier and submits for approval
    Then I can approve the Owner assignment inactivation
    And the Owner assignment becomes inactive in the Entity Management Solution
    And I can reject the Owner assignment inactivation
    And the Owner assignment inactivation is routed back to the User for updates

  @2018.PI03
  Scenario: US1089509
    Given I am a User
    When I need to update an Entity Address Type
    Then I have the ability to update Entity Address Type
    And the updated Entity enters the approval process workflow

  @MVP
  @EXARI-11271
  @2018.PI03
  Scenario: US1094106
    Given I am a User with Approval Authority
    When a User updates a Entity Demographic information and submits for approval
    Then I can approve the updated Entity Demographic information
    And the approved Entity Demographic information becomes active in the Entity Management Solution
    And I can reject the Entity Demographic information updates
    And the Entity Demographic informationupdates are routed back to the User for modifications

  @2018.PI03
  Scenario: US1114662
    Given I am the Entity Management Solution
    When a User is adding an Owner to a TIN
    Then the Owner must be the Legal Owner responsible for reporting to the government

  @MVP
  @EXARI-11249
  @EXARI-11267
  @2018.PI03
  Scenario: US1089944
    Given I am a User with access to maintain Entity information
    When I update an Identifier on an Entity
    Then I must enter Effective date
    And Effective date applies only to the Identifier relationship with the Entity
    And Effective date can be in the future or retroactive
    And the updated Entity enters the approval process workflow

  @2018.PI03
  Scenario: US1114659
    Given I am the Entity Management Solution
    When a TIN does not have an Owner
    Then I require the User to add an Owner to the TIN

  @MVP
  @2018.PI03
  Scenario: US1094107
    Given I am a User with Approval Authority
    When a User inactivates Entity Demographic information and submits for approval
    Then I can approve the Entity Demographic information inactivation
    And the Entity Demographic information becomes inactive in the Entity Management Solution
    And I can reject the Entity Demographic information inactivation
    And the Entity Demographic information remains active in the Entity Management Solution

  @MVP
  @EXARI-11249
  @EXARI-11267
  @2018.PI03
  Scenario: US858616
    Given I am a User with access to maintain Entity information
    When I add an Identifier to an Entity
    Then I must access the Entity
    And I must select an Identifier Type to define the type of Identifier I am adding
    And I can enter an Identifier

