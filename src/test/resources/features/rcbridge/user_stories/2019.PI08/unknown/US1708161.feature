# Last updated on 
@US1708161
@2019.PI08
@releasePresent
@iterationUnknown
Feature: US1708161 - Combine multiple rate condition rules in Sets

  @TC882851
  @Manual
  @Functional
  Scenario: TC882851 - [RL0]
    Given there are multiple rate conditions for a single contract
    Then the rate conditions are store in "groups"
    And the "groups" are viewable by an end user

  @TC882858
  @Manual
  @Functional
  Scenario: TC882858 - [RL1]
    Given there are not multiple rate conditions for a single contract
    Then the rate conditions are store independently
    And the rate conditions are viewable by an end user
    And the format of the single rate condition matches that of multiple conditions

  @TC882859
  @Manual
  @Functional
  Scenario: TC882859 - [RL2]
    Given there are multiple rate conditions for a single provider (i.e. MPIN/TIN)
    Then the rate conditions are store in "groups"
    And the "groups" are viewable by an end user

  @TC882860
  @Manual
  @Functional
  Scenario: TC882860 - [RL3]
    Given there are not multiple rate conditions for a single provider (i.e. MPIN/TIN)
    Then the rate conditions are store independently
    And the rate conditions are viewable by an end user
    And the format of the single rate condition matches that of multiple conditions

