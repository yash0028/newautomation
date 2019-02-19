# Last updated on 
@RC_invalid
@US1550162
@2019.PI06
@2019.PI06.04
@releasePresent
@iterationFuture
Feature: US1550162 - Set Monitor Timer for Retro

  @RC_unlinked
  @TC717640
  @Manual
  @Functional
  @RC_invalid
  Scenario: TC717640 - [RL1]
    Given a retro approval request exists
    When it is approved with a timer of less than 60 days
    Then the LOB specific timer is set for the number of days specified by the LOB COO

