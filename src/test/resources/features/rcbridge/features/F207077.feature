# Last updated on 
@F207077
Feature: F207077 - Exari EM - Identifier Maintenance

  @US950017
  Scenario: US950017 - Void Identifier Relationship with Entity
    Given I am a User with access to maintain Entity information
    When I need to void the relationship between an Identifier and an Entity
    Then I can enter an end date to terminate the relationship between the Identifier and the Entity

  @US955716
  Scenario: US955716 - Inactivate Owner of an Identifier
    Given I am a User with access to maintain Entity information
    When I need to change the Owner of an Identifier
    Then I must access the Identifier
    And I can inactivate the current Owner
    And Inactivation date can be in the future or retroactive
    And Standard field validation rules apply
    And I must select a new Owner

  @US1090067
  Scenario: US1090067 - Inactivate Identifier Relationship with Entity
    Given I am a User with access to maintain Entity information
    When I need to inactivate the relationship between an Identifier and an Entity
    Then I can enter an end date to terminate the active relationship between the Identifier and the Entity
    And the Entity retains the effective and end dates for when it was in an active relationship with the Identifier
    And the Identifier retains the effective and end dates for when it was in an active relationship with the Entity

  @MVP
  @EXARI-11267
  @EXARI-11249
  @CLM_UAT
  @US1089942
  @2018.PI03
  Scenario: US1089942 - Set Effective Date - Identifier
    Given I am a User with access to maintain Entity information
    When I add or update an Identifier relationship to an Entity
    Then I must enter Effective date
    And Effective date applies only to the Identifier relationship with the Entity
    And Effective date can be in the future or retroactive

  @US1089924
  Scenario: US1089924 - Assign Owner to Updated Identifier
    Given I am the Entity Management Solution
    When a User updates an Identifier to an Entity
    Then I check the Identifier for the presence of an Owner
    And I display Owner associated to the Identifier
    And the User must select the existing Owner for the Identifier or assign new Owner if not present

  @EXARI-11249
  @US1089668
  Scenario: US1089668 - Perform Identifier Field Validation - Update Identifier
    Given I am the Entity Management Solution
    When a User updates an Identifier on an Entity
    Then I perform field validation to ensure the Identifier was entered in the correct format based on Identifier Type selected
    And I must perform a duplicate check on the Identifier

  @MVP
  @EXARI-11267
  @CLM_UAT
  @US955775
  @2018.PI03
  Scenario: US955775 - Set Inactivation Date - Identifier
    Given I am a User with access to manage Entity information
    When I need to expire an Identifier relationship with an Entity
    Then I must enter an expiration date for the Identifier
    And Inactivation date applies only to the Identifier relationship with the Entity
    And Inactivation date can be in the future or retroactive
    And the Entity retains the effective and end dates for when it was in an active relationship with the Identifier
    And the Identifier retains the effective and end dates for when it was in an active relationship with the Entity

  @EXARI-11249
  @EXARI-11267
  @US1089944
  Scenario: US1089944 - Set Identifier Effective Date - Update Identifier
    Given I am a User with access to maintain Entity information
    When I update an Identifier on an Entity
    Then I must enter Effective date
    And Effective date applies only to the Identifier relationship with the Entity
    And Effective date can be in the future or retroactive
    And the updated Entity enters the approval process workflow

  @EXARI-11249
  @US1089624
  Scenario: US1089624 - Perform Identifier Field Validation - Add Identifier
    Given I am the Entity Management Solution
    When a User adds an Identifier to an Entity
    Then I perform field validation to ensure the Identifier was entered in the correct format based on Identifier Type selected
    And I perform a duplicate check on the new Identifier

  @US1089630
  Scenario: US1089630 - Assign Owner to New Identifier
    Given I am the Entity Management Solution
    When a User adds an Identifier to an Entity
    Then I check the Identifier for the presence of an Owner
    And I display Owner associated to the Identifier
    And the User must select the existing Owner for the Identifier or assign new Owner if not present

  @EXARI-11249
  @EXARI-11267
  @US858616
  Scenario: US858616 - Add Identifier to Entity
    Given I am a User with access to maintain Entity information
    When I add an Identifier to an Entity
    Then I must access the Entity
    And I must select an Identifier Type to define the type of Identifier I am adding
    And I can enter an Identifier

  @US1089633
  Scenario: US1089633 - Assign Owner to Identifier
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

