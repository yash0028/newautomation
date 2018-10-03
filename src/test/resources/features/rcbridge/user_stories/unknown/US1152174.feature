# Last updated on 
@MVP
@CLM_UAT
@EXARI-11792
@US1152174
@MVP
@Plus
@Priority_1
@F137675
Feature: US1152174 - Entity Type Conflict - PHO and IPA

  @TC565476
  @Automated
  @Functional
  @MVP
  @CLM_UAT
  @EXARI-11792
  @US1152174
  Scenario: TC565476 - [RL0]
    Given I am the Entity Management Solution
    When a User is selecting an Entity Type
    Then the parent Entity can be either IPA or PHO but not both
    And a PHO parent could have multiple IPA children
    And an IPA parent generally would not have PHO as a child

