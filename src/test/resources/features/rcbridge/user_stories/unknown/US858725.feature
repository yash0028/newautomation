# Last updated on 
@MVP
@EXARI-10529
@CLM_UAT
@US858725
@F207084
@releaseUnknown
@iterationUnknown
Feature: US858725 - View Entity Summary

  @TC565074
  @Automated
  @Functional
  @MVP
  @EXARI-10529
  @CLM_UAT
  @US858725
  Scenario: TC565074 - [RL0]
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

