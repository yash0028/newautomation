# Last updated on 
@US1145673
@2018.PI02
Feature: US1145673 - Change delivery method from Wet to DocuSign

  @TC565810
  @Automated
  @Functional
  Scenario: TC565810 - [RL0]
    Given a contract's delivery method is Paper
    When I need to send via DocuSign
    Then I can change the contract to be sent via DocuSign

