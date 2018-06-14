# Last updated on 2018-06-14T15:11:28.659Z
@MVP
@Plus
@Parity
Feature: F176903 - Capture signatures via DocuSign or Paper

  Scenario: US1145673
    Given a contract's delivery method is Paper
    When I need to send via DocuSign
    Then I can change the contract to be sent via DocuSign

