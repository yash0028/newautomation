# Last updated on 2018-05-22T15:39:07.482Z
@MVP
@Plus
Feature: F188964 - View Entity History

  @EXARI-11273
  Scenario: US858611
    Given I am a User with access to view and maintain Entity information
    When I want to view Entity import history
    Then I can view the User who imported the Entity data
    Then And the time and date on which the User imported the Entity data

  @EXARI-11273
  Scenario: US858699
    Given I am a User with access to view and maintain Entity information
    When I want to view time lining history for Entity Characteristics
    Then I can view Entity Characteristic effective dates
    Then And I can view the Entity Characteristic end dates
    Then And I can view the User who added or removed an Entity Characteristic
    Then And I can view the date and time of when the User performed the change

  @EXARI-11273
  Scenario: US922849
    Given I am a User with access to view and maintain Entity information
    When I want to view address history for an Entity
    Then I can view previous addresses
    Then And I can view the current addresses
    Then And I can view the User who performed each address change
    Then And I can view the time and date on which the User performed the address change

  @EXARI-11273
  Scenario: US858632
    Given I am a User with access to view and maintain Entity information
    When I want to audit supplemental detail associated with an Entity
    Then I can view documents associated to the Entity
    Then And I can view notes associated to the Entity
    Then And I can view the User who uploaded the document
    Then And I can view the User who entered the note
    Then And I can view the date and time of when the User performed the action

  @EXARI-11273
  Scenario: US927842
    Given I am a User with access to view and maintain Entity information
    When I want to view relationship time line history between a Provider and an Entity
    Then I can view the relationship effective date
    Then And I can view the relationship end date
    Then And I can view the User who entered each date
    Then And I can view the date and time of when the User entered each date

  @EXARI-11273
  Scenario: US858600
    Given I am a User with access to view and maintain Entity information
    When I want to view the history of events and modifications for an Entity
    When And I want to view the Users responsible for performing modifications to an Entity
    Then I can view Entity creation dates with Users who performed the changes
    Then And I can view Entity inactivation dates with Users who performed the changes
    Then And I can view Entity Type update dates with Users who performed the changes
    Then And I can view Entity update dates with Users who performed the changes

  @EXARI-11273
  Scenario: US858625
    Given I am a User with access to view and maintain Entity information
    When I want to view historical changes to demographic information on an Entity
    Then I can view the previous demographic information value
    Then And I can view the current demographic information value
    Then And I can view the User who performed the demographic information value change
    Then And I can view the time and date the User performed the demographic information value change

  @EXARI-11271
  Scenario: US858606
    Given I am a User with access to view and maintain Entity information
    When I want to view approvals for modifications made to Entities
    Then I can view the time and date the modification was made
    Then And I can view the time and date the approval was granted
    Then And I can view the User who performed the change
    Then And I can view the User with Approval Authority who approved the change

  Scenario: US858706
    Given I am a User with access to view and maintain Entity information
    When I want to view time lining history for Business Rules
    Then I can view Business Rule effective dates
    Then And I can view the Business Rule end dates
    Then And I can view the User who added or removed a Business Rule
    Then And I can view the date and time of when the User performed the change

  @EXARI-11273
  Scenario: US922855
    Given I am a User with access to view and maintain Entity information
    When I want to view the time lining history of Alternate Name/Alias/DBA changes on an Entity
    Then I can view the previous Alternate Name/Alias/DBA field value
    Then And I can view the current Alternate Name/Alias/DBA field value
    Then And I can view the User who performed the change to the Alternate Name/Alias/DBA field
    Then And I can view the time and date the User performed the change to the Alternate Name/Alias/DBA field

  @EXARI-11273
  Scenario: US858619
    Given I am a User with access to view and maintain Entity information
    When I want to view history of identifier additions to an Entity
    When And I want to view history of identifier removals from an Entity
    Then I can view the identifier previous value
    Then And I can view the identifier current value
    Then And I can view the User who performed the value change
    Then And I can view the time and date on which the User performed the value change

  @EXARI-11273
  Scenario: US922853
    Given I am a User with access to view and maintain Entity information
    When I want to view characteristic change history on an Entity
    Then I can view the previous characteristic information value
    Then And I can view the current characteristic information value
    Then And I can view the User who performed the characteristic information value change
    Then And I can view the time and date the User performed the characteristic information value change

  @EXARI-11273
  Scenario: US858670
    Given I am a User with access to view and maintain Entity information
    When I want to view relationship time lining history between two Entities
    Then I can view the effective date for each relationship
    Then And I can view the end date for each relationship
    Then And I can view the User who entered a date for each relationship
    Then And I can view the date and time of when the User entered each date for each relationship

