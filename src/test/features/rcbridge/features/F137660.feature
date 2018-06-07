# Last updated on 2018-06-07T05:26:00.582Z
@MVP
@Plus
@Priority_1
Feature: F137660 - Create and Maintain Entity Identifiers

  Scenario: US858618
    Given I am the Entity Management solution
    When User adds an identifier to an Entity
    When And User updates an Identifier associated with an Entity
    Then I capture the identifier previous value
    Then And I capture the identifier current value
    Then And I capture User who performed the value change
    Then And I capture the date and time on which the User performed the value change

  Scenario: US955716
    Given I am a User with access to maintain Entity information
    When I need to change the Owner of an Identifier
    Then I must access the Identifier
    Then And I can inactivate the current Owner
    Then And Inactivation date can be in the future or retroactive
    Then And Standard field validation rules apply
    Then And I must select a new Owner

  Scenario: US1089942
    Given I am a User with access to maintain Entity information
    When I add an Identifier to an Entity
    Then I must enter Effective date
    Then And Effective date applies only to the Identifier relationship with the Entity
    Then And Effective date can be in the future or retroactive
    Then And the updated Entity enters the approval process workflow

  Scenario: US1089628
    Given I am the Entity Management Solution
    When a User updates an Identifier to an Entity
    Then I check for duplicate Identifiers
    Then And if Identifier exists, the User receives a notification to use existing Identifier
    Then And if Identifier does not exist, the User is allowed to proceed and create new
    Then And the User is required to assign an Owner to the Identifier

  Scenario: US1089924
    Given I am the Entity Management Solution
    When a User updates an Identifier to an Entity
    Then I check the Identifier for the presence of an Owner
    Then And I display Owner associated to the Identifier
    Then And the User must select the existing Owner for the Identifier or assign new Owner if not present

  Scenario: US1089668
    Given I am the Entity Management Solution
    When a User updates an Identifier on an Entity
    Then I perform field validation to ensure the Identifier was entered in the correct format based on Identifier Type selected
    Then And I must perform a duplicate check on the Identifier

  Scenario: US1089625
    Given I am the Entity Management Solution
    When a User adds an Identifier to an Entity
    When And I have performed field validation
    Then I check for duplicate Identifiers
    Then And if Identifier exists, the User receives a notification to use existing Identifier
    Then And if Identifier does not exist, the User is allowed to proceed and create new
    Then And the User is required to assign an Owner to the Identifier

  Scenario: US955775
    Given I am a User with access to manage Entity information
    When I need to update an Identifier on an Entity
    Then I must access the Entity
    Then And I can update an Identifier
    Then And I can update Identifier Type

  Scenario: US1089944
    Given I am a User with access to maintain Entity information
    When I update an Identifier on an Entity
    Then I must enter Effective date
    Then And Effective date applies only to the Identifier relationship with the Entity
    Then And Effective date can be in the future or retroactive
    Then And the updated Entity enters the approval process workflow

  Scenario: US1089624
    Given I am the Entity Management Solution
    When a User adds an Identifier to an Entity
    Then I perform field validation to ensure the Identifier was entered in the correct format based on Identifier Type selected
    Then And I perform a duplicate check on the new Identifier

  Scenario: US1089630
    Given I am the Entity Management Solution
    When a User adds an Identifier to an Entity
    Then I check the Identifier for the presence of an Owner
    Then And I display Owner associated to the Identifier
    Then And the User must select the existing Owner for the Identifier or assign new Owner if not present

  Scenario: US858616
    Given I am a User with access to manage Entity information
    When I need to add an Identifier to an Entity
    Then I must access the Entity
    Then And I must select an Identifier Type to define the type of Identifier I am adding
    Then And I can enter an Identifier

  Scenario: US1089633
    Given I am a User with access to maintain Entity information
    When I want to add an Owner to an Identifier
    Then I can access the Identifier
    Then And I can search for an Entity to establish as the new Owner
    Then And Entities matching my search are displayed
    Then And I can select an Entity from search results to establish as the new Owner
    Then And I can enter the effective date for the new Identifier Owner
    Then And Effective date can be in the future or retroactive
    Then And Standard field validation rules applied
    Then And An Identifier must only have one active Owner at a time
    Then And the updated Identifier enters the approval process workflow

