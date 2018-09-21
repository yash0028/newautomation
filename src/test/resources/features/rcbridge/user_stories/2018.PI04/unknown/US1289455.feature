# Last updated on 
@US1289455
@2018.PI04
Feature: US1289455 - Create Contract Config Detail web page template

  @TC565827
  @Automated
  @Functional
  Scenario: TC565827 - [RL0]
    Given a contract configuration summary record exist
    When a request is initiated to access the detail record
    Then the detail record properties and values are displayed using a predefined template layout

