# Last updated on 
@MVP
@EXARI-10529
@CLM_UAT
@US858723
@MVP
@releaseUnknown
@iterationUnknown
Feature: US858723 - View Entity Structure by Relationship

  @TC564872
  @Automated
  @Functional
  @MVP
  @EXARI-10529
  @CLM_UAT
  Scenario: TC564872 - [RL0]
    Given I am a User with access to view and maintain Entity information
    When I want to view only Entity components of a specified Relationship
    Then I can customize my view to only show Entity components with the specified Relationship
    And the system displays the Entity components with my specified Relationship

