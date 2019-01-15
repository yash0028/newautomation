# Last updated on 
@US1526213
@2018.PI05
@2018.PI05.04
@releasePresent
@iterationPresent
Feature: US1526213 - PCP reassignment work objects audits database schema  (PCP) - addendum

  @TC695695
  @Manual
  @Functional
  Scenario: TC695695 - [RL0]
    # Scenario 4 (PCP reassignment information has been resolved- single reassign MPIN/IPA/Sequence number)
    Given A a business contractor is reviewing a PCP reassignment error
    When They have entered a reassign MPIN, IPA, address sequence number
    And They have clicked the proceed with reassignment button
    Then Record the transaction ID with the reassignment MPIN, IPA, address sequence number,
    And Record the transaction ID with date/time stamp the resolution was made
    And the transaction record is available for reporting/export

  @TC695697
  @Manual
  @Functional
  Scenario: TC695697 - [RL1]
    # Scenario 5 (PCP reassignment information has been resolved- multiple reassign MPIN/IPA/Sequence number)
    Given A a business contractor is reviewing a PCP reassignment error
    When They have entered more than one reassign MPIN, IPA, address sequence number
    And They have clicked the proceed with reassignment button
    Then Record the transaction ID with the reassignment MPIN, IPA, address sequence number the user entered
    And Record the transaction ID with date/time stamp the resolution was made
    And the transaction record is available for reporting/export

