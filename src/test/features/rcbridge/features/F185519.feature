# Last updated on 2018-06-05T15:33:28.685Z
@MVP
@Parity
Feature: F185519 - Obtain approval of a Mass Action Project

  Scenario: US1100537
    Given the Mass Action Project is ready for approval
    When the Approver is ready to provide response to request for approval
    Then the Approver will be able to input comments at the time of approval

  Scenario: US1098408
    Given the Mass Action Project is ready for approval
    When Activity Manager has created a work item for approval
    Then the User may input comments prior to the work item going to the approver

  Scenario: US1100544
    Given a Mass Action Project has submitted for approval
    When the Approver rejects the Mass Action Project
    Then the User will be able to make corrections
    Then And Approval will be initiated by the User upon resolution

  Scenario: US1098403
    Given the amendment documents have been generated
    When the User determines there are no edits required
    Then Activity Manager should create a work item for approval
    Then And allow the User to input comments

