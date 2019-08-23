# Last updated on 
@CLM_Security
@US1729327
@2019.PI08
@2019.PI08.05
@releasePresent
@iterationPresent
Feature: US1729327 - Build Inactive User capability for CMD

  @TC949601
  @Manual
  @Functional
  @CLM_Security
  Scenario: TC949601 - [RL0]
    Given when this process runs daily at 2am CT (or time TBD per Secure)
    And when any user id who has a last login date 75 days prior to current date will be captured and an email will be sent to user's email address (derived from user id OR captured from site-minder if available)
    And user will receive an email specifying the application name, the environment and the email notifies them that their account will be removed at the 90 day mark (the date that is the 90 day mark must be noted in the email) and the user accesses the link to the CMD application that is specified in the email for the environment they are being notified about link
    Then their account will be updated with the date they access the CMD application/env with the current date and the user will not receive another email about this unless they dont login to CMD for another 75 days.

