# Last updated on 
@US1100544
@2018.PI03
@MVP
@Parity
@F185519
@releasePast
@iterationUnknown
Feature: US1100544 - Resolve feedback from Approver

  @TC565816
  @Automated
  @Functional
  @US1100544
  @2018.PI03
  Scenario: TC565816 - [RL0]
    Given a Mass Action Project has submitted for approval
    When the Approver rejects the Mass Action Project
    Then the User will be able to make corrections
    And Approval will be initiated by the User upon resolution

