# Last updated on 
@MVP
@Parity
@F185519
Feature: F185519 - Obtain approval of a Mass Action Project

  @US1100537
  @2018.PI03
  Scenario: US1100537 - Document comments within approval response
    Given the Mass Action Project is ready for approval
    When the Approver is ready to provide response to request for approval
    Then the Approver will be able to input comments at the time of approval

  @US1098408
  @2018.PI03
  Scenario: US1098408 - Document comments within request for approval
    Given the Mass Action Project is ready for approval
    When Activity Manager has created a work item for approval
    Then the User may input comments prior to the work item going to the approver

  @US1100544
  @2018.PI03
  Scenario: US1100544 - Resolve feedback from Approver
    Given a Mass Action Project has submitted for approval
    When the Approver rejects the Mass Action Project
    Then the User will be able to make corrections
    And Approval will be initiated by the User upon resolution

  @US1098403
  @2018.PI03
  Scenario: US1098403 - Request approval of Mass Action
    Given the amendment documents have been generated
    When the User determines there are no edits required
    Then Activity Manager should create a work item for approval
    And allow the User to input comments

