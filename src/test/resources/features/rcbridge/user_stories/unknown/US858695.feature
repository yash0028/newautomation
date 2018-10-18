# Last updated on 
@MVP
@EXARI-11792
@EXARI-11249
@CLM_UAT
@US858695
@MVP
@Plus
@Priority_1
@F137674
@releaseUnknown
@iterationUnknown
Feature: US858695 - Setup Entity Characteristic Type

  @TC564774
  @Automated
  @Functional
  @MVP
  @EXARI-11792
  @EXARI-11249
  @CLM_UAT
  @US858695
  Scenario: TC564774 - [RL0]
    Given I am an Administrative User
    When I want to setup a new Characteristic Type
    Then I can setup a Characteristic Type
    And Users can select that Characteristic Type to define an Entity detail

