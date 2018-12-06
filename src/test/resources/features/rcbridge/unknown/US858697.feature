# Last updated on 
@EXARI-11249
@CLM_UAT
@US858697
@releaseUnknown
@iterationUnknown
Feature: US858697 - Setup Identifier Type

  @TC564941
  @Automated
  @Functional
  @EXARI-11249
  @CLM_UAT
  Scenario: TC564941 - [RL0]
    Given I am an Administrative User
    When I want to setup a new Identifier Type
    Then I can setup an Identifier Type
    And Users can select that Identifier Type when creating or updating an Identifier

