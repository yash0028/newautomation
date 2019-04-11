# Last updated on 
@US1573722
@2019.PI07
@2019.PI07.02
@releaseFuture
@iterationFuture
Feature: US1573722 - Present Retro Request to Network COO for Approval

  @TC785968
  @Manual
  @Functional
  Scenario: TC785968 - [RL1]
    Given NPPP has requested LOB COO approval
    When the LOB COO opens the task
    Then they see <LOB name> LOB COO Decision (based upon the LOBs selected by the initiator)
    And there is Help text "Please review the below information regarding a Retro Approval Request. You will need to Approve, Request More Information, or Deny the request within 2 business days. If denying the request, a Denial Reason and Comments are required."
    And LOB COO has 3 decision options- "Approve", "Deny", "Request More Info"
    And a comments field to write in user input - "Comments" field is mandatory
    # Note- System must capture date and time of the comments added.

  @TC785969
  @Manual
  @Functional
  Scenario: TC785969 - [RL2]
    Given an "initiate retro" request task is opened by a LOB COO
    When the LOB COO selects "Deny"
    Then another cascading drop down option labeled "Denial Reason" is required with the following drop downs:
      | Settlement                        |
      | Change the Planned Effective Date |
      | Duplicate                         |
      | Requested Closure                 |
      | Other                             |

