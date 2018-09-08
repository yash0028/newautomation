# Last updated on 
@F207082
Feature: F207082 - Exari EM - Create and Maintain Demographic and Characteristic Info

  @EXARI-11273
  @US858625
  Scenario: US858625 - View Demographic Time Lining History
    Given I am a User with access to view and maintain Entity information
    When I want to view historical changes to demographic information on an Entity
    Then I can view the previous demographic information value
    And I can view the current demographic information value
    And I can view the User who performed the demographic information value change
    And I can view the time and date the User performed the demographic information value change

  @MVP
  @CLM_UAT
  @US922850
  Scenario: US922850 - Inactivate Entity Characteristic Detail
    Given I am a User with access to maintain Entities
    When I want to inactivate characteristic information on an Entity
    Then I can inactivate Entity characteristic information on the Entity

  @EXARI-11249
  @US858621
  Scenario: US858621 - Add Entity Demographic Info
    Given I am a User with access to maintain Entities
    When I want to add demographic information to an Entity
    Then I can add Entity demographic information to the Entity
    And the added Entity demographic information enters the approval process workflow

  @US922831
  Scenario: US922831 - Inactivate Entity Demographic Info
    Given I am a User with access to maintain Entity information
    When I want to inactivate demographic information on an Entity
    Then I can inactivate Entity demographic information on the Entity
    And the inactivated Entity demographic information enters the approval process workflow

  @EXARI-11249
  @US858622
  Scenario: US858622 - Update Demographic Info
    Given I am a User with access to maintain Entity information
    When I want to update demographic information on an Entity
    Then I can update Entity demographic information on the Entity
    And the updated Entity demographic information enters the approval process workflow

