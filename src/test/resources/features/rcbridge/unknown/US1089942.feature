# Last updated on
@MVP
@EXARI-11267
@EXARI-11249
@CLM_UAT
@US1089942
@F207077
@releaseUnknown
@iterationUnknown
Feature: US1089942 - Set Effective Date - Identifier

  @TC565781
  @Automated
  @Functional
  @MVP
  @EXARI-11267
  @EXARI-11249
  @CLM_UAT
  @US1089942
  Scenario: TC565781 - [RL0]
    Given I am a User with access to maintain Entity information
    When I add or update an Identifier relationship to an Entity
    Then I must enter Effective date
    And Effective date applies only to the Identifier relationship with the Entity
    And Effective date can be in the future or retroactive

