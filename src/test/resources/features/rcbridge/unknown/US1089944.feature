# Last updated on 
@EXARI-11249
@EXARI-11267
@US1089944
@F207077
@releaseUnknown
@iterationUnknown
Feature: US1089944 - Set Identifier Effective Date - Update Identifier

  @TC565982
  @Automated
  @Functional
  @EXARI-11249
  @EXARI-11267
  @US1089944
  Scenario: TC565982 - [RL0]
    Given I am a User with access to maintain Entity information
    When I update an Identifier on an Entity
    Then I must enter Effective date
    And Effective date applies only to the Identifier relationship with the Entity
    And Effective date can be in the future or retroactive
    And the updated Entity enters the approval process workflow

