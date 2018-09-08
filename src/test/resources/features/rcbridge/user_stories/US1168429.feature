# Last updated on 
@MVP
@CLM_UAT
@US1168429
Feature: US1168429 - Create Contracting Event

  @TC565424
  @Automated
  @Functional
  Scenario: TC565424 - [RL0]
    Given I am the Entity Management Solution
    When an active contract is in place for an Identifier to Entity relationship that is being expired
    Then I create a Contracting Event
    And the Contracting Event alerts a Contracting representative that contract maintenance may be required

