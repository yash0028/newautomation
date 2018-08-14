# Last updated on 
@MVP
@Plus
@Parity
@F176903
Feature: F176903 - Capture signatures via DocuSign or Paper

  @US1145673
  @2018.PI02
  Scenario: US1145673 - Change delivery method from Wet to DocuSign
    Given a contract's delivery method is Paper
    When I need to send via DocuSign
    Then I can change the contract to be sent via DocuSign

