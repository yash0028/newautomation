# Last updated on 
@CLM_UAT
@EXARI-11792
@US858701
@MVP
@Priority_4
@releaseUnknown
@iterationUnknown
Feature: US858701 - Create & Update Entity Rules

  @TC565691
  @Automated
  @Functional
  @CLM_UAT
  @EXARI-11792
  Scenario: TC565691 - [RL0]
    Given I am an Administrative User
    When I want to create a new business rule for an Entity
    And I want to update an existing business rule for an Entity
    Then I can create a new business rule for an Entity
    And I can update an existing business rule for an Entity

