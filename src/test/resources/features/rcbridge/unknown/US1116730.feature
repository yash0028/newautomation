# Last updated on 
@MVP
@EXARI-11792
@EXARI-11249
@CLM_UAT
@US1116730
@MVP
@Plus
@Priority_1
@releaseUnknown
@iterationUnknown
Feature: US1116730 - Expire Entity Characteristic Type

  @TC565585
  @Automated
  @Functional
  @MVP
  @EXARI-11792
  @EXARI-11249
  @CLM_UAT
  Scenario: TC565585 - [RL0]
    Given I am an Administrative User
    When I need to expire an Entity Characteristic Type
    Then I can expire an existing Entity Characteristic Type
    And Users can no longer select that Entity Characteristic Type to define an Entity
    And all records using that Entity Characteristic Type retain the historical value

