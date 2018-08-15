# Last updated on 
@Andrew_B
@PES
@US1253705
@2018.PI03
Feature: US1253705 - Create Appendix 1 Search Demographics API

  @TC543875
  @Automated
  @Functional
  Scenario: TC543875 - Bad Path Appendix 1 Validation
    Given a counterparty with a corporate MPIN is chosen
    When the service is given an invalid corporate MPIN
    Then no names, addresses, and TINs under that corporate MPIN are returned from the service

  @TC543869
  @Automated
  @Functional
  Scenario: TC543869 - Happy Path Appendix 1 Validation
    Given a counterparty with a corporate MPIN is chosen
    When the service is given a corporate MPIN
    Then all of the names, addresses, and TINs under that corporate MPIN are returned from the service

