# Last updated on 
@US1910159
@2019.PI08
@2019.PI08.03
@releasePresent
@iterationFuture
Feature: US1910159 - Apply CMD Fallout Resolution to multiple targets - Type 1 errors

  @TC884050
  @Manual
  @Functional
  Scenario: TC884050 - [RL0]
    Given a user has selected multiple targets for error resolution
    And the targets have like characteristics (i.e. market number, fee schedule, product group)
    Then the user can input the contract master number
    And the user can input the system
    And the user can select the override use type (i.e. once or always)

  @TC884055
  @Manual
  @Functional
  Scenario: TC884055 - [RL1]
    Given a user has selected multiple targets for error resolution
    And the targets have like characteristics (i.e. market number, fee schedule, product group)
    And the user has input all of the mandatory error resolution elements (e.g. contract master number)
    Then the service will send the error resolution (i.e. contract master) to the applicable downstream systems

  @TC884058
  @Manual
  @Functional
  Scenario: TC884058 - [RL2]
    Given a user has selected multiple targets for error resolution
    When the targets do not have like characteristics (i.e. market number, fee schedule, product group)
    Then the service will display on onscreen error of, "The selected providers do not share characteristics to will enable mass resolution. Please select providers with like characteristics."
    And the service will not allow the user to input any of the mandatory error resolution elements (e.g. contract master number)

