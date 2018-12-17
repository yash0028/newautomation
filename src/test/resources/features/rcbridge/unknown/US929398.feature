# Last updated on 
@EXARI-11249
@CLM_UAT
@EXARI-11792
@US929398
@MVP
@Priority_4
@releaseUnknown
@iterationUnknown
Feature: US929398 - Update Entity Characteristic

  @TC564856
  @Automated
  @Functional
  @EXARI-11249
  @CLM_UAT
  @EXARI-11792
  Scenario: TC564856 - [RL0]
    Given I am an Administrative User
    When I need to update an existing Entity Characteristic
    Then I can update an existing Entity Characteristic
    And I have the ability to cascade update to all records using that Entity Characteristic

