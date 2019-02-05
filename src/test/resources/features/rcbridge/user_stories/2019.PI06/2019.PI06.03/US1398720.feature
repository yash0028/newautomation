# Last updated on 
@US1398720
@2019.PI06
@2019.PI06.03
@releaseFuture
@iterationFuture
Feature: US1398720 - Process CANCEL transaction to subscribing platform(s)

  @TC620250
  @Manual
  @Functional
  Scenario: TC620250 - [RL0]
    Given a RosterUpdate transaction has been published
    When the update is an CANCEL
    And the data has been validated
    Then the rate configurations will be accessed from the OCM record
    And the rate configurations will be timelined within the applicable platforms
    And any errors derived would process within the CMD as "new contract" transactions errors process
    And the updated rate confirmations, including cancel information (e.g. date and reason) will be stored within the OCM database

