# Last updated on 2018-05-22T15:38:52.565Z
@MVP
@Plus
Feature: F181492 - Maintain Identity Keys

  Scenario: US1086978
    Given a Provider exists in Entity Management
    When the Provider NPI is updated in NDB
    Then the new NPI is updated in Entity Management

  Scenario: US1086983
    Given a Provider exists in Entity Management
    When the Provider TIN is updated in NDB
    Then the new TIN is updated in Entity Management

