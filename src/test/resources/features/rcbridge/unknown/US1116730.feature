# Last updated on 
@EXARI-11249
@CLM_UAT
@EXARI-11792
@US1116730
@releaseUnknown
@iterationUnknown
Feature: US1116730 - Expire Entity Attributes

  @TC565585
  @Automated
  @Functional
  @EXARI-11249
  @CLM_UAT
  @EXARI-11792
  Scenario: TC565585 - [RL0]
    Given I am an Administrative User
    When I need to expire an Entity Characteristic Type
    Then I can expire an existing Entity Characteristic Type
    And Users can no longer select that Entity Characteristic Type to define an Entity
    And all records using that Entity Characteristic Type retain the historical value

