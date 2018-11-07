# Last updated on 
@US1098408
@2018.PI03
@MVP
@Parity
@releasePast
@iterationUnknown
Feature: US1098408 - Document comments within request for approval

  @TC564612
  @Automated
  @Functional
  Scenario: TC564612 - [RL0]
    Given the Mass Action Project is ready for approval
    When Activity Manager has created a work item for approval
    Then the User may input comments prior to the work item going to the approver

