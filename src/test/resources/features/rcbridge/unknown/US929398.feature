# Last updated on 
@EXARI-11249
@CLM_UAT
@EXARI-11792
@US929398
@releaseUnknown
@iterationUnknown
Feature: US929398 - Update Entity Characteristic Type

  @TC564856
  @Automated
  @Functional
  @EXARI-11249
  @CLM_UAT
  @EXARI-11792
  Scenario: TC564856 - [RL0]
    Given I am an Administrative User
    When I need to update an existing Entity Characteristic Type
    Then I can update an existing Entity Characteristic Type
    And I have the ability to cascade update to all records using that Entity Characteristic Type

