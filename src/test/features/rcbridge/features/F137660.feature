# Last updated on 2018-06-11T18:42:07.090Z
@MVP
@Plus
@Priority_1
Feature: F137660 - Create and Maintain Entity Identifiers

  @MVP
  @EXARI-11273
  @2018.PI03
  Scenario: US858618
    Given I am the Entity Management solution
    When User adds an identifier to an Entity
    And User updates an Identifier associated with an Entity
    Then I capture the identifier previous value
    And I capture the identifier current value
    And I capture User who performed the value change
    And I capture the date and time on which the User performed the value change

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
  @EXARI-11249
  @EXARI-11267
  @2018.PI03
  Scenario: US1089942
    Given I am a User with access to maintain Entity information
    When I add an Identifier to an Entity
    Then I must enter Effective date
    And Effective date applies only to the Identifier relationship with the Entity
    And Effective date can be in the future or retroactive
    And the updated Entity enters the approval process workflow

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

  @MVP
  @EXARI-11267
  @2018.PI03
  Scenario: US955775
    Given I am a User with access to manage Entity information
    When I need to update an Identifier on an Entity
    Then I must access the Entity
    And I can update an Identifier
    And I can update Identifier Type

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
  @EXARI-11249
  @EXARI-11267
  @2018.PI03
  Scenario: US858616
    Given I am a User with access to manage Entity information
    When I need to add an Identifier to an Entity
    Then I must access the Entity
    And I must select an Identifier Type to define the type of Identifier I am adding
    And I can enter an Identifier

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

