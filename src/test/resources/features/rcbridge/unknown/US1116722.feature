# Last updated on 
@MVP
@CLM_UAT
@US1116722
@MVP
@Plus
@Priority_1
@releaseUnknown
@iterationUnknown
Feature: US1116722 - Expire Relationship Options

  @TC565849
  @Automated
  @Functional
  @MVP
  @CLM_UAT
  Scenario: TC565849 - [RL0]
    Given I am an Administrative User
    When I need to expire a Relationship option
    Then I can expire an existing Relationship option
    And Users can no longer select that Relationship option to define a relationship
    And all records using that Relationship option retain the value

