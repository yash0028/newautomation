# Last updated on 2018-07-10T05:31:48.255Z
@MVP
@Plus
@Parity
Feature: F176903 - Capture signatures via DocuSign or Paper

  @2018.PI02
  @2018.PI02.05
  Scenario: US1145673
    Given a contract's delivery method is Paper
    When I need to send via DocuSign
    Then I can change the contract to be sent via DocuSign

