# Last updated on 
@RC_invalid
@US1526213
@2019.PI06
@2019.PI06.04
@releasePresent
@iterationFuture
Feature: US1526213 - [Spike]PCP reassignment work objects  save to database  (PCP) - addendum

  @TC695695
  @Manual
  @Functional
  @RC_invalid
  Scenario: TC695695 - [RL0]
    # Scenario 4 (PCP reassignment information has been resolved- single reassign MPIN/IPA/Sequence number)
    Given A a business contractor is reviewing a PCP reassignment error
    When They have entered a reassign MPIN, IPA, address sequence number
    And They have clicked the proceed with reassignment button
    Then Record the transaction ID with the reassignment MPIN, IPA, address sequence number,
    And Record the transaction ID with date/time stamp the resolution was made
    And the transaction record is available for reporting/export

