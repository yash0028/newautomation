# Last updated on 
@US1145673
@2018.PI02
@2018.PI02.05
@MVP
@Plus
@Parity
@F176903
@releasePast
@iterationPast
Feature: US1145673 - Change delivery method from Wet to DocuSign

  @TC565810
  @Automated
  @Functional
  @US1145673
  @2018.PI02
  @2018.PI02.05
  Scenario: TC565810 - [RL0]
    Given a contract's delivery method is Paper
    When I need to send via DocuSign
    Then I can change the contract to be sent via DocuSign
