# Last updated on 
@EXARI-11249
@EXARI-11267
@CLM_UAT
@US858594
@Plus
@Priority_1
@releaseUnknown
@iterationUnknown
Feature: US858594 - Inactivate Entity

  @TC565940
  @Automated
  @Functional
  @EXARI-11249
  @EXARI-11267
  @CLM_UAT
  Scenario: TC565940 - [RL0]
    Given I am a User who has access to maintain an Entity
    And all contracts associated to the Entity are reassigned or marked inactive
    And all provider relationships associated to the Entity are reassigned or marked inactive
    And all Entity relationships associated to the Entity are reassigned or marked inactive
    And all Identifiers associated to the Entity are reassigned or marked inactive
    When I want to deactivate an Entity
    Then I have the ability to indicate that the Entity is no longer active
    And all inactivated relationships associated to the Entity are retained (not orphaned)

