# Last updated on 
@US1754412
@2019.PI07
@2019.PI07.02
@releasePresent
@iterationFuture
Feature: US1754412 - Enable MGA Paper Type for Integrations

  @TC804731
  @Manual
  @Functional
  Scenario: TC804731 - [RL0]
    Given a valid Exari contract transaction is received
    When the contract paper type is MGA
    Then the contract passes validation
    ###

