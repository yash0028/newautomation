# Last updated on 
@MVP
@CLM_UAT
@US1116731
@2018.PI03
Feature: US1116731 - Expire Identifier Type

  @TC565704
  @Automated
  @Functional
  Scenario: TC565704 - [RL0]
    Given I am an Administrative User
    When I need to expire an Identifier Type
    Then I can expire an existing Identifier Type
    And Users can no longer select that Identifier Type to define an Identifier
    And all records using that Identifier Type retain the historical value

