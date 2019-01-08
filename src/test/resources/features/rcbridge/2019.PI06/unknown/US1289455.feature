# Last updated on 
@CMD2
@A_UI_Story
@US1289455
@2019.PI06
@releaseFuture
@iterationUnknown
Feature: US1289455 - Create Contract Config Detail web page template

  @TC616515
  @Manual
  @Functional
  @CMD2
  @A_UI_Story
  Scenario: TC616515 - [RL0]
    Given a contract configuration summary record exist
    When a request is initiated to access the detail record
    Then the detail record properties and values are displayed using a predefined template layout

