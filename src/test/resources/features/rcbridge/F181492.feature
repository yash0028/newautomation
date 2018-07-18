# Last updated on 2018-07-17T21:02:49.614Z
@MVP
@Plus
@Priority_1
Feature: F181492 - Exari EM - Maintain Identity Keys

  @MVP
  @EXARI-11249
  @CLM_UAT
  @2018.PI03
  Scenario: US1086978
    Given an NPI exists in Entity Management
    When the NPI is updated in NDB
    Then the NPI updates flow to Entity Management

  @MVP
  @EXARI-11249
  @CLM_UAT
  @2018.PI03
  Scenario: US1086983
    Given a TIN exists in Entity Management
    When the TIN is updated in NDB
    Then the TIN updates flow to Entity Management

