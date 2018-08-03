# Last updated on 2018-08-03T13:20:36.255Z

Feature: F207084 - Exari EM - View Summary and Reporting

  @MVP
  @CLM_UAT
  @2018.PI03
  Scenario: US861135
    Given I am a User with access to view and maintain Entity information
    When I want to view Entity Summary data outside of the Entity Management Solution
    Then I have the ability to export Entity Summary data

  @MVP
  @EXARI-10529
  @CLM_UAT
  @2018.PI03
  Scenario: US858725
    Given I am a User with access to view and maintain Entity information
    When I want to view an Entity summary
    Then I can search for an Entity
    And I can view Entity Umbrella Name
    And I can view Entity ID
    And I can view Entity Type
    And I can view the number of Contracts associated with the Entity
    And I can view the number of Alternative Names associated with the Entity
    And I can view the number of Identifiers associated with the Entity
    And I can view the number of Entity Relationships associated with the Entity
    And I can view the number of Providers associated with the Entity
    And I can view the number of related Entities by Relationship Type associated with the Entity
    And I can view the number of related Entities by Relationship Role associated with the Entity

  @2018.PI03
  Scenario: US861137
    Given I am the Entity Management Solution
    When an external recipient with no User access needs to receive Entity information
    Then I can provide Entity data to the recipients

