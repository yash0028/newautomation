# Last updated on 2018-06-14T13:25:40.734Z
@Non_MVP
Feature: F184554 - Migrate Delegated Credentialing

  Scenario: US1098237
    Given I am the Entity Management Solution
    When a DLGT CD assignment is updated in NDB
    Then the DLGT CD is updated in the Entity Management Solution

  Scenario: US1098232
    Given I am a User with access to view and maintain Entity information
    When I want to view current MPIN/TIN/DLGT CD data that was stored in NDB
    And I want to view historical MPIN/TIN/DLGT CD data that was stored in NDB
    Then I can access this data through the Entity Management Solution

  Scenario: US1098234
    Given I am a User with access to view and maintain Entity information
    When I want to view DLGT CDs and Descriptions that were previously located in NDB
    Then I can view DLGT CDs and Descriptions in the Entity Management Solution

