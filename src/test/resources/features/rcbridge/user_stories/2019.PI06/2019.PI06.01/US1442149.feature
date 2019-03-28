# Last updated on 
@US1442149
@2019.PI06
@2019.PI06.01
@releasePresent
@iterationPast
Feature: US1442149 - Retry installation count of a Type 2 Errors contract Line increments

  @TC724003
  @Manual
  @Functional
  Scenario: TC724003 - [RL0]
    # Scenario 1
    Given a NDB Type 2 Error
    When a user requested a retry installation
    Then The Type 2 Error retry count has a value of 1

  @TC743350
  @Manual
  @Functional
  Scenario: TC743350 - [RL1]
    # Scenario 2
    Given a NDB Type 2 Error
    When a user requested a retry installation and that installation retry fails
    When a user requests a second retry installation request
    Then The Type 2 Error retry count has a value of 2

  @TC724004
  @Manual
  @Functional
  Scenario: TC724004 - [RL2]
    # Scenario 3
    Given a COSMOS Type 2 Error
    When a user requested a retry installation
    Then The Type 2 Error retry count has a value of 1

  @TC743517
  @Manual
  @Functional
  Scenario: TC743517 - [RL3]
    # Scenario 4
    Given a COSMOS Type 2 Error
    When a user requested a retry installation and that installation retry fails
    When a user requests a second retry installation request
    Then The Type 2 Error retry count has a value of 2

