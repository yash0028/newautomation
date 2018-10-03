# Last updated on 
@US1358733
@2018.PI04
@2018.PI04.03
Feature: US1358733 - Publish NDB (COSMOS) API contract master more than one response

  @TC597206
  @Manual
  @Functional
  Scenario: TC597206 - [RL1]
    # Scenario 2 (UNET search with mkt, fee schedule, and multiple product codes
    Given The NDB contract master look up API was executed with market number, fee schedule, more than one product code, DIV, Panel, and COSMOS contract number
    When The API response was successful
    Then The API returned more than one contract master
    And Add the contract master response to

  @TC597205
  @Manual
  @Functional
  Scenario: TC597205 - [RL0]
    # Scenario 1 (UNET search with mkt, fee schedule, single product code, DIV, Panel, and COSMOS contract number)
    Given The NDB contract master look up API was executed with market number, fee schedule, single product code, DIV, Panel, and COSMOS contract number
    When The API response was successful
    Then The API returned more than one contract master
    And Add the contract master response to

