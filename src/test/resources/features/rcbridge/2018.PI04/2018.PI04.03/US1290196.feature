# Last updated on 
@US1290196
@2018.PI04
@2018.PI04.03
@MVP
@Madhur
@Priority_1
@CMD
@F218723
@releasePresent
@iterationPresent
Feature: US1290196 - [Continued] Contract Master Override work objects audits database schema

  @TC616488
  @Manual
  @Functional
  @US1290196
  @2018.PI04
  @2018.PI04.03
  Scenario: TC616488 - [RL2]
    # Scenario 3 (contract master error has been resolved- multiple contract masters)
    Given A business contractor is reviewing a contract master error
    When They have overridden the contract master
    And They have manually entered in a contractor master ID
    Then Record the contract master information the business user entered
    And Update the transaction ID with the date/timestamp the resolution was made.

  @TC616490
  @Manual
  @Functional
  @US1290196
  @2018.PI04
  @2018.PI04.03
  Scenario: TC616490 - [RL4]
    # Scenario 5 (PCP reassignment information has been resolved- multiple reassign MPIN/IPA/Sequence number)
    Given A a business contractor is reviewing a PCP reassignment error
    When They have entered more than one reassign MPIN, IPA, address sequence number
    And They have clicked the proceed with reassignment button
    Then Record the transaction ID with the reassignment MPIN, IPA, address sequence number the user entered
    And Record the transaction ID with date/time stamp the resolution was made

  @TC616487
  @Manual
  @Functional
  @US1290196
  @2018.PI04
  @2018.PI04.03
  Scenario: TC616487 - [RL1]
    # Scenario 2 (contract master error has been resolved- multiple contract masters)
    Given A business contractor is reviewing a contract master error
    When They have overridden the contract master
    And They have selected one contract master that was displayed on the screen
    Then Record the contract master information the business user entered
    And Update the transaction ID with the date/timestamp the resolution was made.

  @TC616486
  @Manual
  @Functional
  @US1290196
  @2018.PI04
  @2018.PI04.03
  Scenario: TC616486 - [RL0]
    # Scenario 1 (contract master error has been resolved- No contract master found error)
    Given A business contractor is reviewing a contract master error
    When They have overridden the contract master
    And They have clicked the proceed with installation button
    Then record the contract master information the business user entered
    And Update the transaction ID with the date/timestamp the resolution was made.

  @TC616489
  @Manual
  @Functional
  @US1290196
  @2018.PI04
  @2018.PI04.03
  Scenario: TC616489 - [RL3]
    # Scenario 4 (PCP reassignment information has been resolved- single reassign MPIN/IPA/Sequence number)
    Given A a business contractor is reviewing a PCP reassignment error
    When They have entered a reassign MPIN, IPA, address sequence number
    And They have clicked the proceed with reassignment button
    Then Record the transaction ID with the reassignment MPIN, IPA, address sequence number,
    And Record the transaction ID with date/time stamp the resolution was made

