# Last updated on 
@MVP
@CLM_UAT
@US1116722
@MVP
@Plus
@Priority_1
@F137674
@releaseUnknown
@iterationUnknown
Feature: US1116722 - Expire Relationship Type

  @TC565849
  @Automated
  @Functional
  @MVP
  @CLM_UAT
  @US1116722
  Scenario: TC565849 - [RL0]
    Given I am an Administrative User
    When I need to expire a Relationship Type
    Then I can expire an existing Relationship Type
    And Users can no longer select that Relationship Type to define an Entity relationship
    And all records using that Relationship Type retain the historical value
