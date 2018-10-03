# Last updated on 
@MVP
@EXARI-11792
@EXARI-11249
@CLM_UAT
@US949962
@MVP
@Plus
@Priority_1
@F137674
Feature: US949962 - Update Account Types

  @TC565978
  @Automated
  @Functional
  @MVP
  @EXARI-11792
  @EXARI-11249
  @CLM_UAT
  @US949962
  Scenario: TC565978 - [RL0]
    Given I am an Administrative User
    When I need to update an existing Account Type
    Then I can update an existing Account Type
    And I have the ability to cascade update to all records using that Account Type

