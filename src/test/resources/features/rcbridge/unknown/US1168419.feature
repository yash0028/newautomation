# Last updated on
@MVP
@CLM_UAT
@US1168419
@MVP
@Plus
@Priority_1
@F137660
@releaseUnknown
@iterationUnknown
Feature: US1168419 - Search Identifier

  @TC565011
  @Automated
  @Functional
  @MVP
  @CLM_UAT
  @US1168419
  Scenario: TC565011 - [RL0]
    Given I am a User with access to maintain Entity information
    When I need to add an Identifier to an Entity
    Then I must access the Entity
    And I must search for an Identifier to add to the Entity
    And I can select the returned Identifier or request the Identifier be created in the Source of Truth

