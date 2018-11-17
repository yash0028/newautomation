# Last updated on 
@MVP
@EXARI-11249
@EXARI-11267
@US1089944
@MVP
@Plus
@Priority_1
@releaseUnknown
@iterationUnknown
Feature: US1089944 - Set Identifier Relationship Effective Date

  @TC565982
  @Automated
  @Functional
  @MVP
  @EXARI-11249
  @EXARI-11267
  Scenario: TC565982 - [RL0]
    Given I am a User with access to maintain Entity information
    When I associate an Identifier to an Entity
    Then I must enter Effective date
    And Effective date applies only to the Identifier relationship with the Entity
    And Effective date can be in the future or retroactive
    And the updated Entity enters the approval process workflow

