# Last updated on 
@US1396747
@2018.PI05
@2018.PI05.04
@MVP
@Maintenance
@F236509
@releaseFuture
@iterationFuture
Feature: US1396747 - Allow self configuration

  @TC619294
  @Manual
  @Functional
  @US1396747
  @2018.PI05
  @2018.PI05.04
  Scenario: TC619294 - [RL0]
    Given I need to change or add a configuration
    When I go into the appropriate interviews
    Then my configurations apply to both newly authored and ongoing maintenance
