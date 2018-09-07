# Last updated on 
@MVP
@EXARI-11249
@CLM_UAT
@US1116715
@2018.PI03
Feature: US1116715 - Expire Entity Type

  @TC565143
  @Automated
  @Functional
  Scenario: TC565143 - [RL0]
    Given I am an Administrative User
    When I need to expire an Entity Type
    Then I can expire an existing Entity Type
    And Users can no longer select that Entity Type to define an Entity
    And all records using that Entity Type retain the historical value
