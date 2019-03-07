# Last updated on 
@US1387308
@2019.PI06
@2019.PI06.03
@releasePresent
@iterationPresent
Feature: US1387308 - Process ADD transaction to subscribing platform(s)

  @TC614198
  @Manual
  @Functional
  Scenario: TC614198 - [RL0]
    Given a RosterUpdate transaction has been published
    When the update is an add
    And the data has been validated
    And the provider(s) being added have been identified
    And the contract record stored in the OCM database contains a single rate configuration
    Then the rate configuration would be applied to the provider in the downstream systems
    And any errors derived would process within the CMD as "new contract" transactions errors process
    And the provider record/configuration will be stored within the OCM database

  @TC746057
  @Manual
  @Functional
  Scenario: TC746057 - [RL1]
    Given a RosterUpdate transaction has been published
    When the update is an add
    And the data has been validated
    And the provider(s) being added have been identified
    And the contract record stored in the OCM database contains a multiple rate configurations
    Then the applicable rate configuration will be selected based on the characteristics of the provider being added
    And the selected rate configuration would be applied to the provider in the downstream systems
    And any errors derived would process within the CMD as "new contract" transactions errors process
    And the provider record/configuration will be stored within the OCM database

