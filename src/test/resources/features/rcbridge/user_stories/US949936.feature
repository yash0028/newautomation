# Last updated on 
@MVP
@EXARI-11792
@EXARI-11249
@CLM_UAT
@US949936
@2018.PI03
Feature: US949936 - Setup Account Types

  @TC565061
  @Automated
  @Functional
  Scenario: TC565061 - [RL0]
    Given I am an Administrative User
    When I want to setup a new Account Type
    Then I can setup an Account Type
    And Users can select that Account Type to define an Entity

