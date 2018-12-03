# Last updated on 
@US1290196
@2018.PI05
@2018.PI05.01
@MVP
@Priority_2
@NDB
@CMD
@releasePresent
@iterationPresent
Feature: US1290196 - Contract Master Override Update Work Objects Table (Non PCP)

  @TC616486
  @Manual
  @Functional
  Scenario: TC616486 - [RL0]
    # Scenario 1 (contract master error has been resolved- No contract master found error)
    Given A business contractor is reviewing a contract master error
    When They have overridden the contract master
    And They have clicked the proceed with installation button
    Then record the contract master information the business user entered
    And Update the transaction ID with the date/timestamp the resolution was made.

  @TC616487
  @Manual
  @Functional
  Scenario: TC616487 - [RL1]
    # Scenario 2 (contract master error has been resolved- multiple contract masters)
    Given A business contractor is reviewing a contract master error
    When They have overridden the contract master
    And They have selected one contract master that was displayed on the screen
    Then Record the contract master information the business user entered
    And Update the transaction ID with the date/timestamp the resolution was made.

  @TC616488
  @Manual
  @Functional
  Scenario: TC616488 - [RL2]
    # Scenario 3 (contract master error has been resolved- multiple contract masters)
    Given A business contractor is reviewing a contract master error
    When They have overridden the contract master
    And They have manually entered in a contractor master ID
    Then Record the contract master information the business user entered
    And Update the transaction ID with the date/timestamp the resolution was made.

