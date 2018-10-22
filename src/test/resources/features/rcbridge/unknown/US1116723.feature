# Last updated on
@MVP
@CLM_UAT
@US1116723
@MVP
@Plus
@Priority_1
@F137674
@releaseUnknown
@iterationUnknown
Feature: US1116723 - Expire Relationship Role

  @TC565029
  @Automated
  @Functional
  @MVP
  @CLM_UAT
  @US1116723
  Scenario: TC565029 - [RL0]
    Given I am an Administrative User
    When I need to expire a Relationship Role
    Then I can expire an existing Relationship Role
    And Users can no longer select that Relationship Role to define an Entity relationship
    And all records using that Relationship Role retain the historical value

