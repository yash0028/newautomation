# Last updated on 
@US1289455
@2018.PI05
@releaseFuture
@iterationUnknown
Feature: US1289455 - Create Contract Config Detail web page template

  @TC616515
  @Manual
  @Functional
  Scenario: TC616515 - [RL0]
    Given a contract configuration summary record exist
    When a request is initiated to access the detail record
    Then the detail record properties and values are displayed using a predefined template layout

