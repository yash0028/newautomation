# Last updated on 
@US1998550
@2019.PI09
@2019.PI09.02
@releasePresent
@iterationFuture
Feature: US1998550 - Record user details for Abort transaction that result in Type 1 errors

  @TC968855
  @Manual
  @Functional
  Scenario: TC968855 - [RL0]
    Given a contract event results in a Type 1 Contract Master error
    When the user has selects to abort the install
    And the user has confirmed their desire to abort the transaction
    Then the outcome result is stored in the audit database
    And the user details are also stored in the audit database
    And the details are also available for retreival from the database if needed
    ###

