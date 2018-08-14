# Last updated on 
@MVP
@Plus
@Priority_1
@F137659
Feature: F137659 - Exari EM - Import Data

  @MVP
  @CLM_UAT
  @EXARI-11399
  @US858608
  @2018.PI03
  Scenario: US858608 - Import Relationships from Template
    Given I am a User with access to maintain Entities
    When I want to load Entity relationships in template form into the Entity Management solution
    Then I can import Entity relationships listed in template form into the Entity Management solution

  @MVP
  @CLM_UAT
  @EXARI-11399
  @US858607
  @2018.PI03
  Scenario: US858607 - Import Structure from Template
    Given I am a User with access to maintain Entities
    When I want to load an Entity structure in template form into the Entity Management solution
    Then I can import the Entity structure into the Entity Management solution

  @MVP
  @EXARI-11273
  @US858609
  @2018.PI03
  Scenario: US858609 - Capture Import Time Lining History
    Given I am the Entity Management solution
    When A User imports Entity Structure or Entity Relationships from a template
    Then I capture Entity Name
    And I capture Entity ID
    And I capture the User who imported data
    And I capture the time and date when User imported data

