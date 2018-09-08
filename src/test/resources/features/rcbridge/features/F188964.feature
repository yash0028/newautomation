# Last updated on 
@MVP
@Plus
@Priority_1
@F188964
Feature: F188964 - Exari EM - View Entity History

  @MVP
  @CLM_UAT
  @EXARI-11273
  @US927842
  Scenario: US927842 - View Provider to Entity Relationship Time Lining History
    Given I am a User with access to view and maintain Entity information
    When I want to view relationship time line history between a Provider and an Entity
    Then I can view the relationship effective date
    And I can view the relationship end date
    And I can view the User who entered each date
    And I can view the date and time of when the User entered each date

  @MVP
  @CLM_UAT
  @EXARI-11273
  @US858611
  Scenario: US858611 - View Importation Time Lining History
    Given I am a User with access to view and maintain Entity information
    When I want to view Entity import history
    Then I can view the User who imported the Entity data
    And the time and date on which the User imported the Entity data

  @MVP
  @CLM_UAT
  @EXARI-11273
  @US858699
  Scenario: US858699 - View Characteristics Time Lining History
    Given I am a User with access to view and maintain Entity information
    When I want to view time lining history for Entity Characteristics
    Then I can view Entity Characteristic effective dates
    And I can view the Entity Characteristic end dates
    And I can view the User who added or removed an Entity Characteristic
    And I can view the date and time of when the User performed the change

  @MVP
  @CLM_UAT
  @EXARI-11273
  @US858600
  Scenario: US858600 - View Entity Time Lining History
    Given I am a User with access to view and maintain Entity information
    When I want to view the history of events and modifications for an Entity
    And I want to view the Users responsible for performing modifications to an Entity
    Then I can view Entity creation dates with Users who performed the changes
    And I can view Entity inactivation dates with Users who performed the changes
    And I can view Entity Type update dates with Users who performed the changes
    And I can view Entity update dates with Users who performed the changes

  @MVP
  @CLM_UAT
  @EXARI-11273
  @US922855
  Scenario: US922855 - View Alternate Name/Alias Time Lining History
    Given I am a User with access to view and maintain Entity information
    When I want to view the time lining history of Alternate Name/Alias/DBA changes on an Entity
    Then I can view the previous Alternate Name/Alias/DBA field value
    And I can view the current Alternate Name/Alias/DBA field value
    And I can view the User who performed the change to the Alternate Name/Alias/DBA field
    And I can view the time and date the User performed the change to the Alternate Name/Alias/DBA field

  @MVP
  @CLM_UAT
  @EXARI-11273
  @US858619
  Scenario: US858619 - View Identifier Time Lining History
    Given I am a User with access to view and maintain Entity information
    When I want to view history of identifier additions to an Entity
    And I want to view history of identifier removals from an Entity
    Then I can view the identifier previous value
    And I can view the identifier current value
    And I can view the User who performed the value change
    And I can view the time and date on which the User performed the value change

  @MVP
  @CLM_UAT
  @EXARI-11273
  @US858632
  Scenario: US858632 - View Supplemental Detail Time Lining History
    Given I am a User with access to view and maintain Entity information
    When I want to audit supplemental detail associated with an Entity
    Then I can view documents associated to the Entity
    And I can view notes associated to the Entity
    And I can view the User who uploaded the document
    And I can view the User who entered the note
    And I can view the date and time of when the User performed the action

  @MVP
  @CLM_UAT
  @EXARI-11273
  @US858670
  Scenario: US858670 - View Relationship Time Lining History
    Given I am a User with access to view and maintain Entity information
    When I want to view relationship time lining history between two Entities
    Then I can view the effective date for each relationship
    And I can view the end date for each relationship
    And I can view the User who entered a date for each relationship
    And I can view the date and time of when the User entered each date for each relationship

