# Last updated on 
@EXARI-11249
@CLM_UAT
@EXARI-11792
@US949962
@releaseUnknown
@iterationUnknown
Feature: US949962 - Update Account Types

  @TC565978
  @Automated
  @Functional
  @EXARI-11249
  @CLM_UAT
  @EXARI-11792
  Scenario: TC565978 - [RL0]
    Given I am an Administrative User
    When I need to update an existing Account Type
    Then I can update an existing Account Type
    And I have the ability to cascade update to all records using that Account Type

