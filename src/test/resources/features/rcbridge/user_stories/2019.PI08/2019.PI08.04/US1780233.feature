# Last updated on 
@CLM_Security
@US1780233
@2019.PI08
@2019.PI08.04
@releasePast
@iterationPast
Feature: US1780233 - Add capability to track user login to CMD application

  @TC938301
  @Manual
  @Functional
  @CLM_Security
  Scenario: TC938301 - [RL0]
    Given when a user logs into any CMD application env,
    Then the CMD application will keep track of the login date by userid (msid), environment (dev,, tst, stg, trn, prd) , and track the date/time stamp at time of login (yyyy-mm-dd including hh:mm) and store it in a database table (or appropriate location).
    And whenever a user logs into CMD env, that user's record in the data store will be updated to show the last-login-date for the CMD env that the user logged in.

  @TC938303
  @Manual
  @Functional
  @CLM_Security
  Scenario: TC938303 - [RL1]
    When the Inactive user feature is built
    Then that process will be able to query this data store to find the last-login-date for all users in the CMD application, by environment, which will allow discovery on user activity by environment.. (separate user story)

