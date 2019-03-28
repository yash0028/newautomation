# Last updated on 
@CMD2
@US1425588
@2019.PI06
@2019.PI06.01
@releasePresent
@iterationPast
Feature: US1425588 - Track resent Type 2 error transactions to COSMOS

  @TC634355
  @Manual
  @Functional
  @CMD2
  Scenario: TC634355 - [RL0]
    # Scenario 1
    Given a user has viewed a COSMOS Type 2 Error transaction status in CMD
    When a user has determined the need to resend/retry the transaction
    And the user as entered the rational for requesting the retry
    And the user hits the retry button for that contract line
    Then The state of the Type 2 error work object is changed from 'Open' to 'Pending Retry'
    And The Contract's configuration record for that contract line's installation state is changed to 'Resolution Pending'
    And a Contract Line Retry request is sent for the COSMOS updates to process

  @TC634362
  @Manual
  @Functional
  @CMD2
  Scenario: TC634362 - [RL1]
    # Scenario 2
    Given a user requested a retry of a failed COSMOS contract line installation
    When the retry is successful
    Then The state of the Type 2 error work object is changed from 'Pending Retry' to 'Resolved'
    And The Type 2 error work object is no longer visible on the CMD Error screen
    And The Contract's configuration record for that contract line's installation state is changed to 'Installed'
    And COSMOS shows that the contract line is installed

