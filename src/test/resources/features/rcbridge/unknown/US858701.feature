# Last updated on 
@MVP
@CLM_UAT
@EXARI-11792
@US858701
@MVP
@Plus
@Priority_1
@F137675
@releaseUnknown
@iterationUnknown
Feature: US858701 - Create & Update Entity Rules

  @TC565691
  @Automated
  @Functional
  @MVP
  @CLM_UAT
  @EXARI-11792
  @US858701
  Scenario: TC565691 - [RL0]
    Given I am an Administrative User
    When I want to create a new business rule for an Entity
    And I want to update an existing business rule for an Entity
    Then I can create a new business rule for an Entity
    And I can update an existing business rule for an Entity
