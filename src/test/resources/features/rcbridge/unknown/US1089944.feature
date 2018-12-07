# Last updated on 
@MVP
@EXARI-11249
@EXARI-11267
@US1089944
@MVP
@Priority_1
@releaseUnknown
@iterationUnknown
Feature: US1089944 - Set Relationship Effective Date

  @TC565982
  @Automated
  @Functional
  @MVP
  @EXARI-11249
  @EXARI-11267
  Scenario: TC565982 - [RL0]
    Given I am a User with access to maintain Entity information
    When I establish a relationship
    Then I must enter Effective date
    And Effective date applies only to the relationship
    And Effective date can be in the future or retroactive
    And each Entity in the relationship retains the effective and end dates of the relationship

