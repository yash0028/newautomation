# Last updated on 2018-06-25T20:45:33.247Z
@MVP
@Plus
@Parity
Feature: F201539 - Capture signatures via DocuSign or Paper - Part 2

  Scenario: US1145673
    Given a contract's delivery method is Paper
    When I need to send via DocuSign
    Then I can change the contract to be sent via DocuSign

