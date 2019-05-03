# Last updated on 
@Arvind
@Suman
@US1550202
@2019.PI06
@2019.PI06.05
@releasePast
@iterationPast
Feature: US1550202 - Present Retro Request to LOB COO for Approval

  @TC743398
  @Manual
  @Functional
  @Arvind
  @Suman
  Scenario: TC743398 - [RL0]
    Given the task is completed and reviewed by NPPP
    When NPPP chooses "COO Approval Needed"
    Then the notification for retro approval request email is sent to each impacted COO as contained within the "Initiate Retro Form" (re-use the same email that was created for the ML US1562019)
    And a task is assigned to each impacted COO task list to take decision

  @TC765086
  @Manual
  @Functional
  @Arvind
  @Suman
  Scenario: TC765086 - [RL1]
    Given NPPP has requested LOB COO approval
    When the LOB COO opens the task
    Then all of the data in fields from the NPPP Form are displayed and can't be modified

  @TC765090
  @Manual
  @Functional
  @Arvind
  @Suman
  Scenario: TC765090 - [RL2]
    Given NPPP has requested LOB COO approval
    When the task is routed to LOB COO
    Then the task is assigned a Due Date of two business days

  @TC765092
  @Manual
  @Functional
  @Arvind
  @Suman
  Scenario: TC765092 - [RL3]
    Given NPPP has requested LOB COO approval
    When the LOB COO opens the task
    Then they see <LOB name> LOB COO Decision (based upon the LOBs selected by the initiator)
    And there is Help text "Please review the below information regarding a Retro Approval Request. You will need to Approve, Request More Information, or Deny the request within 2 business days. If denying the request, a Denial Reason and Comments are required."
    And LOB COO has 3 decision options- "Approve", "Deny", "Request More Info"
    And a comments field to write in user input - "Comments" field is mandatory
    # Note- System must capture date and time of the comments added.

  @TC765093
  @Manual
  @Functional
  @Arvind
  @Suman
  Scenario: TC765093 - [RL4]
    Given an "initiate retro" request task is opened by a LOB COO
    When the LOB COO selects "Deny"
    Then another cascading drop down option labeled "Denial Reason" is required with the following drop downs:
      | Settlement                        |
      | Change the Planned Effective Date |
      | Duplicate                         |
      | Requested Closure                 |
      | Other                             |

