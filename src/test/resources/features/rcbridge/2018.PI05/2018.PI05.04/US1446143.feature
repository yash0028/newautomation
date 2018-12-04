# Last updated on 
@US1446143
@2018.PI05
@2018.PI05.04
@CMD
@releasePresent
@iterationFuture
Feature: US1446143 - Contract Master Override work objects audits database schema  (PCP)

  @TC648741
  @Manual
  @Functional
  Scenario: TC648741 - [RL0]
    # Scenario 4 (PCP reassignment information has been resolved- single reassign MPIN/IPA/Sequence number)
    Given A a business contractor is reviewing a PCP reassignment error
    When They have entered a reassign MPIN, IPA, address sequence number
    And They have clicked the proceed with reassignment button
    Then Record the transaction ID with the reassignment MPIN, IPA, address sequence number,
    And Record the transaction ID with date/time stamp the resolution was made

  @TC648744
  @Manual
  @Functional
  Scenario: TC648744 - [RL1]
    # Scenario 5 (PCP reassignment information has been resolved- multiple reassign MPIN/IPA/Sequence number)
    Given A a business contractor is reviewing a PCP reassignment error
    When They have entered more than one reassign MPIN, IPA, address sequence number
    And They have clicked the proceed with reassignment button
    Then Record the transaction ID with the reassignment MPIN, IPA, address sequence number the user entered
    And Record the transaction ID with date/time stamp the resolution was made

