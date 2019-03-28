# Last updated on 
@Archana
@Sheham
@US1550162
@2019.PI06
@2019.PI06.04
@releasePresent
@iterationPresent
Feature: US1550162 - Set Monitor Timer for Retro

  @TC717638
  @Manual
  @Functional
  @Archana
  @Sheham
  Scenario: TC717638 - [RL0]
    Given a retro approval request exists
    When it is approved
    Then the 60 day timer is set

  @RC_unlinked
  @TC717640
  @Manual
  @Functional
  @Archana
  @Sheham
  Scenario: TC717640 - [RL1]
    Given a retro approval request exists
    When it is approved with a timer of less than 60 days
    Then the LOB specific timer is set for the number of days specified by the LOB COO

