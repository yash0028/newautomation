# Last updated on 2018-06-28T16:45:30.832Z
@MVP
@Plus
@Priority_1
Feature: F181492 - Maintain Identity Keys

  @MVP
  @EXARI-11249
  @CLM_UAT
  @2018.PI03
  Scenario: US1086978
    Given a Provider exists in Entity Management
    When the Provider NPI is updated in NDB
    Then the new NPI is updated in Entity Management

  @MVP
  @EXARI-11249
  @CLM_UAT
  @2018.PI03
  Scenario: US1086983
    Given a Provider exists in Entity Management
    When the Provider TIN is updated in NDB
    Then the new TIN is updated in Entity Management

