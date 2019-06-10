# Last updated on 
@US1442149
@2019.PI06
@2019.PI06.01
@releaseUnknown
@iterationUnknown
Feature: US1442149 - Retry installation count of a Type 2 Errors contract Line increments

  @TC724003
  @Manual
  @Functional
  Scenario: TC724003 - [RL0]
    # Scenario 1
    Given a NDB Type 2 Error
    When a user requested a retry installation
    Then The Type 2 Error retry count has a value of 1

  @TC724004
  @Manual
  @Functional
  Scenario: TC724004 - [RL2]
    # Scenario 3
    Given a COSMOS Type 2 Error
    When a user requested a retry installation
    Then The Type 2 Error retry count has a value of 1

