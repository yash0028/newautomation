# Last updated on 
@Non_MVP
@F184554
Feature: F184554 - Exari EM - Migrate Delegated Credentialing

  @US1098237
  Scenario: US1098237 - Establish Daily Update Process
    Given I am the Entity Management Solution
    When a DLGT CD assignment is updated in NDB
    Then the DLGT CD is updated in the Entity Management Solution

  @US1098232
  Scenario: US1098232 - Migrate MPIN/TIN/DLGT CD Data
    Given I am a User with access to view and maintain Entity information
    When I want to view current MPIN/TIN/DLGT CD data that was stored in NDB
    And I want to view historical MPIN/TIN/DLGT CD data that was stored in NDB
    Then I can access this data through the Entity Management Solution

  @US1098234
  Scenario: US1098234 - Migrate DLGT CDs and Descriptions
    Given I am a User with access to view and maintain Entity information
    When I want to view DLGT CDs and Descriptions that were previously located in NDB
    Then I can view DLGT CDs and Descriptions in the Entity Management Solution

