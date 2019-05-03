# Last updated on 
@US1573722
@2019.PI07
@2019.PI07.02
@releasePresent
@iterationPresent
Feature: US1573722 - Present Retro Request to Network COO and operations COO for Approval

  @TC743510
  @Manual
  @Functional
  Scenario: TC743510 - [RL0]
    Given initiator has requested network coo & operations COO approval
    When the network COO and operations COO are each assigned a task
    Then the notification for retro approval request email is sent to the network COO and operations COO as contained within the "Initiate Retro Form" (re-use the same email that was created for the ML US1562019)
    And all the data in fields from the retro form are displayed and can't be modified
    And the decisions and comments of all the LOB COO are displayed and can't be modified
    And there is Help text "Please review the below information regarding a Retro Approval Request. You will need to Approve, Request More Information, or Deny the request within 2 business days. If denying the request, a Denial Reason and Comments are required."
    And Network COO and operations COO has 3 decision options- "Approve", "Deny", "Request More Info"
    And a comments field to write in user input - "Comments" field is mandatory
    And the task is assigned a Due Date of two business days

  @TC785968
  @Manual
  @Functional
  Scenario: TC785968 - [RL1]
    Given initiator has requested network COO and operations COO approval
    When the Network COO or operations COO selects "Deny"
    Then another cascading drop down option labeled "Denial Reason" is required with the following drop downs:
      | Settlement                        |
      | Change the Planned Effective Date |
      | Duplicate                         |
      | Requested Closure                 |
      | Other                             |

  @RC_unlinked
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

