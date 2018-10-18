# Last updated on
@US955716
@F207077
@releaseUnknown
@iterationUnknown
Feature: US955716 - Inactivate Owner of an Identifier

  @TC565736
  @Automated
  @Functional
  @US955716
  Scenario: TC565736 - [RL0]
    Given I am a User with access to maintain Entity information
    When I need to change the Owner of an Identifier
    Then I must access the Identifier
    And I can inactivate the current Owner
    And Inactivation date can be in the future or retroactive
    And Standard field validation rules apply
    And I must select a new Owner

