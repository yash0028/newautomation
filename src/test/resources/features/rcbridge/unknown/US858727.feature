# Last updated on 
@MVP
@EXARI-10529
@CLM_UAT
@US858727
@MVP
@releaseUnknown
@iterationUnknown
Feature: US858727 - View Relationships within Entity

  @TC565078
  @Automated
  @Functional
  @MVP
  @EXARI-10529
  @CLM_UAT
  Scenario: TC565078 - [RL0]
    Given I am a User with access to view and maintain Entity information
    When I want to view all Entity relationships
    Then I can search for an Entity
    And I can view all relationships associated to that Entity

