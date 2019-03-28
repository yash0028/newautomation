# Last updated on 
@US1410231
@releaseUnknown
@iterationUnknown
Feature: US1410231 - Identify FOUNDATION ERR as Type 3 error

  @TC743397
  @Manual
  @Functional
  Scenario: TC743397 - [RL0]
    ##Scenario 1 (Identify foundation error as type 3)
    Given I have submitted a contract master request
    When The response from the NDB API indicates a foundation error
    Then The error should be classified as a type 2 error
    #### (Scenario 2- view record updated after being selected error on CMD error page with generic message)
    Given The contract master I have submitted contains an error due to a foundation error
    When I click on the failed button on the CMD error page
    Then On the error modal i can see the error code in the error code section
    And On the error modal I can see the error description in the description section
    And On the error modal I can see a remediation text. Please reference any relevant P&P documentation for remediation steps.

