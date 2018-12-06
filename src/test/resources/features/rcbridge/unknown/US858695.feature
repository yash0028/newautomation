# Last updated on 
@EXARI-11249
@CLM_UAT
@EXARI-11792
@US858695
@releaseUnknown
@iterationUnknown
Feature: US858695 - Setup Entity Attributes

  @TC564774
  @Automated
  @Functional
  @EXARI-11249
  @CLM_UAT
  @EXARI-11792
  Scenario: TC564774 - [RL0]
    Given I am an Administrative User
    When I want to setup a new Characteristic Type
    Then I can setup a Characteristic Type
    And Users can select that Characteristic Type to define an Entity detail

