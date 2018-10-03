# Last updated on 
@US1098403
@2018.PI03
@MVP
@Parity
@F185519
Feature: US1098403 - Request approval of Mass Action

  @TC565601
  @Automated
  @Functional
  @US1098403
  @2018.PI03
  Scenario: TC565601 - [RL0]
    Given the amendment documents have been generated
    When the User determines there are no edits required
    Then Activity Manager should create a work item for approval
    And allow the User to input comments

