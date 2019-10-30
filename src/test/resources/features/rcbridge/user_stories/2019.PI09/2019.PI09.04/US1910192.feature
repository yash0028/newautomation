# Last updated on 
@US1910192
@2019.PI09
@2019.PI09.04
@releasePresent
@iterationPresent
Feature: US1910192 - Apply CMD Fallout Resolution to multiple targets - Type 2 errors (Back End)

  @TC884049
  @Manual
  @Functional
  Scenario: TC884049 - [RL0]
    Given a user has selected multiple targets for error resolution
    And the user has input the desired resolution
    When the user clicks to start the resolution
    Then the automation service will randomly select one of the targets
    And the automation service will process the one target to the downstream system

  @TC884056
  @Manual
  @Functional
  Scenario: TC884056 - [RL1]
    Given a user has selected multiple targets for error resolution
    And the user has input the desired resolution
    And the service sent the error resolution for the one of the targets within the data set
    When the error resolution is successful
    Then the service will send the resolution to all other selected targets/transactions

  @TC884059
  @Manual
  @Functional
  Scenario: TC884059 - [RL2]
    Given a user has selected multiple targets for error resolution
    And the user has input the desired resolution
    And the service sent the error resolution for the one of the targets within the data set
    When the error resolution is unsuccessful
    Then the service will log an applicable Type 2 error (based on downstream system response)

  @RC_unlinked
  @TC884062
  @Manual
  @Functional
  Scenario: TC884062 - [RL3]
    Given a user has selected multiple targets for error resolution
    And the targets have like error types (e.g. UHC-ID, update failed)
    And the user has input the desired resolution
    And the service sent the error resolution for the first record in the data set
    When the error resolution is unsuccessful
    Then the service will log an applicable Type 2 error (based on downstream system response)

  @RC_unlinked
  @TC884064
  @Manual
  @Functional
  Scenario: TC884064 - [RL4]
    Given a user has selected multiple targets for error resolution
    When the targets do not have like characteristics (i.e. market number, fee schedule, product group)
    Then the service will display on onscreen error of, "The selected providers do not share characteristics to will enable mass resolution. Please select providers with like characteristics."
    And the service will not allow the user to input any of the mandatory error resolution elements (e.g. contract master number)

