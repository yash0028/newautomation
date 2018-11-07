# Last updated on 
@MVP
@EXARI-10529
@CLM_UAT
@US858726
@MVP
@Plus
@Priority_1
@releaseUnknown
@iterationUnknown
Feature: US858726 - Compare Entity Information

  @TC564996
  @Automated
  @Functional
  @MVP
  @EXARI-10529
  @CLM_UAT
  Scenario: TC564996 - [RL0]
    Given I am a User with access to view and maintain Entity information
    When I want to compare two Entities
    Then I can identify the first Entity
    And I can identify the second Entity
    And I can view detailed information of both Entities

