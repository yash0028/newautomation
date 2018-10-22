# Last updated on 
@US1358501
@2018.PI04
@2018.PI04.01
@MVP
@Madhur
@Priority_1
@CMD
@F218723
@releasePresent
@iterationPast
Feature: US1358501 - [Unfinished] Contract Master Override work objects audits database schema

  @TC597168
  @Manual
  @Functional
  @US1358501
  @2018.PI04
  @2018.PI04.01
  Scenario: TC597168 - [RL1]
    # Scenario 2 (contract master error has been resolved- multiple contract masters)
    Given A business contractor is reviewing a contract master error
    When They have overridden the contract master
    And They have selected one contract master that was displayed on the screen
    Then Record the contract master information the business user entered
    And Update the transaction ID with the date/timestamp the resolution was made.

  @TC597171
  @Manual
  @Functional
  @US1358501
  @2018.PI04
  @2018.PI04.01
  Scenario: TC597171 - [RL4]
    # Scenario 5 (PCP reassignment information has been resolved- multiple reassign MPIN/IPA/Sequence number)
    Given A a business contractor is reviewing a PCP reassignment error
    When They have entered more than one reassign MPIN, IPA, address sequence number
    And They have clicked the proceed with reassignment button
    Then Record the transaction ID with the reassignment MPIN, IPA, address sequence number the user entered
    And Record the transaction ID with date/time stamp the resolution was made

  @TC597167
  @Manual
  @Functional
  @US1358501
  @2018.PI04
  @2018.PI04.01
  Scenario: TC597167 - [RL0]
    # Scenario 1 (contract master error has been resolved- No contract master found error)
    Given A business contractor is reviewing a contract master error
    When They overridden the contract master
    And They have clicked the proceed with installation button
    Then record the contract master information the business user entered
    And Update the transaction ID with the date/timestamp the resolution was made.

  @TC597170
  @Manual
  @Functional
  @US1358501
  @2018.PI04
  @2018.PI04.01
  Scenario: TC597170 - [RL3]
    # Scenario 4 (PCP reassignment information has been resolved- single reassign MPIN/IPA/Sequence number)
    Given A a business contractor is reviewing a PCP reassignment error
    When They have entered a reassign MPIN, IPA, address sequence number
    And They have clicked the proceed with reassignment button
    Then Record the transaction ID with the reassignment MPIN, IPA, address sequence number,
    And Record the transaction ID with date/time stamp the resolution was made

  @TC597169
  @Manual
  @Functional
  @US1358501
  @2018.PI04
  @2018.PI04.01
  Scenario: TC597169 - [RL2]
    # Scenario 3 (contract master error has been resolved- multiple contract masters)
    Given A business contractor is reviewing a contract master error
    When They have overridden the contract master
    And They have manually entered in a contractor master ID
    Then Record the contract master information the business user entered
    And Update the transaction ID with the date/timestamp the resolution was made.

