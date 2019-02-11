# Last updated on 
@US1552975
@2019.PI06
@releasePresent
@iterationUnknown
Feature: US1552975 - LOB COO Reminder for no response

  @TC721873
  @Manual
  @Functional
  Scenario: TC721873 - [RL0]
    Given a LOB COO has an outstanding approval
    When 2 business days have passed
    Then send the LOB COO a reminder email that is the same as the initial email sent (US1550202)

