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

  @TC573538
  @Automated
  @Functional
  @US1290196
  @2018.PI04
  @2018.PI04.03
  Scenario: TC573538 - [RL4]
    # Scenario 5 (PCP reassignment information has been resolved- multiple reassign MPIN/IPA/Sequence number)
    Given A a business contractor is reviewing a PCP reassignment error
    When They have entered more than one reassign MPIN, IPA, address sequence number
    And They have clicked the proceed with reassignment button
    Then Record the transaction ID with the reassignment MPIN, IPA, address sequence number the user entered
    And Record the transaction ID with date/time stamp the resolution was made

  @TC564477
  @Automated
  @Functional
  @US1290196
  @2018.PI04
  @2018.PI04.03
  Scenario: TC564477 - [RL0]
    # Scenario 1 (contract master error has been resolved- No contract master found error)
    Given A business contractor is reviewing a contract master error
    When They overridden the contract master
    And They have clicked the proceed with installation button
    Then record the contract master information the business user entered
    And Update the transaction ID with the date/timestamp the resolution was made.

  @TC573536
  @Automated
  @Functional
  @US1290196
  @2018.PI04
  @2018.PI04.03
  Scenario: TC573536 - [RL2]
    # Scenario 3 (contract master error has been resolved- multiple contract masters)
    Given A business contractor is reviewing a contract master error
    When They have overridden the contract master
    And They have manually entered in a contractor master ID
    Then Record the contract master information the business user entered
    And Update the transaction ID with the date/timestamp the resolution was made.

  @TC573537
  @Automated
  @Functional
  @US1290196
  @2018.PI04
  @2018.PI04.03
  Scenario: TC573537 - [RL3]
    # Scenario 4 (PCP reassignment information has been resolved- single reassign MPIN/IPA/Sequence number)
    Given A a business contractor is reviewing a PCP reassignment error
    When They have entered a reassign MPIN, IPA, address sequence number
    And They have clicked the proceed with reassignment button
    Then Record the transaction ID with the reassignment MPIN, IPA, address sequence number,
    And Record the transaction ID with date/time stamp the resolution was made

  @TC573535
  @Automated
  @Functional
  @US1290196
  @2018.PI04
  @2018.PI04.03
  Scenario: TC573535 - [RL1]
    # Scenario 2 (contract master error has been resolved- multiple contract masters)
    Given A business contractor is reviewing a contract master error
    When They have overridden the contract master
    And They have selected one contract master that was displayed on the screen
    Then Record the contract master information the business user entered
    And Update the transaction ID with the date/timestamp the resolution was made.

