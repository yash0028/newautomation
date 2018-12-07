# Last updated on 
@MVP
@EXARI-10529
@CLM_UAT
@US858722
@MVP
@releaseUnknown
@iterationUnknown
Feature: US858722 - View Entire Entity Structure

  @TC565282
  @Automated
  @Functional
  @MVP
  @EXARI-10529
  @CLM_UAT
  Scenario: TC565282 - [RL0]
    Given I am a User with access to view and maintain Entity information
    When I want to view an entire Entity structure
    Then I can view all components of an Entity
    And I can view all relationships that connect Entity components

