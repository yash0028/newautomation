# Last updated on 
@US1385538
@2019.PI06
@CMD
@releaseFuture
@iterationUnknown
Feature: US1385538 - 8. Modify the Update Contract Configuration service to write any PCP reassignments to the Contract Configuration database

  @TC614173
  @Manual
  @Functional
  Scenario: TC614173 - [RL0]
    Given a contract transaction requires PCP reassignment details
    When the PCP reassignment details are available
    Then the contract configuration service writes the PCP reassignments to the Contract Configuration database

  @TC700954
  @Manual
  @Functional
  Scenario: TC700954 - [RL1]
    Given a contract transaction requires PCP reassignment details
    When the PCP reassignment details are NOT available
    Then the contract configuration service DOES NOT write the PCP reassignments to the Contract Configuration database
    And the contract record assigned a Type 1 Error
    ###

