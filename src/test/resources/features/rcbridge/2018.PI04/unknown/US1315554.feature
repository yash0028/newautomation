# Last updated on
@US1315554
@2018.PI04
@F205008
@releasePresent
@iterationUnknown
Feature: US1315554 - View Contract Product Rate Group Conditions

  @TC573556
  @Automated
  @Functional
  @US1315554
  @2018.PI04
  Scenario: TC573556 - [RL0]
    Given a contract productgroup rate condition exists on a contract
    When the productgroup rate conditions have been recorded in the CMD database
    Then the productgroup rate conditions are available through a web UI

