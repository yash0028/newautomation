# Last updated on 
@US1425656
@2019.PI06
@2019.PI06.01
@releaseUnknown
@iterationUnknown
Feature: US1425656 - UI/UX- Enable Type 2 Error resend select button from CMD error page

  @TC634353
  @Manual
  @Functional
  Scenario: TC634353 - [RL0]
    # Scenario 1
    Given a user has viewed the Type 2 Error transaction status in CMD
    When a user has determined the need to resend/retry the transaction
    And the user as entered the rational for requesting the retry
    And the user hits the retry button for that contract line
    Then The state of the Type 2 error work object is changed from 'Open' to 'Pending Retry'
    And The Contract's configuration record for that contract line's installation state is changed to 'Resolution Pending'
    And a Contract Line Retry request is sent for the NDB and COSMOS updates to process

  @TC634359
  @Manual
  @Functional
  Scenario: TC634359 - [RL1]
    # Scenario 2
    Given a user requested a retry of a failed contract line installation
    When the retry is successful
    Then The state of the Type 2 error work object is changed from 'Pending Retry' to 'Resolved'
    And The Type 2 error work object is no longer visible on the CMD Error screen
    And The Contract's configuration record for that contract line's installation state is changed to 'Installed'
    And NDB and COSMOS show that the contract line is installed

