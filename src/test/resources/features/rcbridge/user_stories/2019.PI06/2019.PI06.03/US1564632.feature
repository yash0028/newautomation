# Last updated on 
@Sachin
@US1564632
@2019.PI06
@2019.PI06.03
@releasePast
@iterationPast
Feature: US1564632 - Re-Present denied Retro Request to Market Lead for Approval

  @TC743506
  @Manual
  @Functional
  @Sachin
  Scenario: TC743506 - [RL0]
    Given an "initiate retro" request task is completed
    When the Market Lead opens the task
    Then all of the data in fields from the "Initiate Retro" is displayed in edit more and can be modified
    And the retro request initiator is informed if the data in the fields in modified

  @TC747950
  @Manual
  @Functional
  @Sachin
  Scenario: TC747950 - [RL1]
    Given an initiate retro form is completed by requestor
    When the task is routed to Market Lead
    Then the task is assigned a Due Date of two business days

  @TC747952
  @Manual
  @Functional
  @Sachin
  Scenario: TC747952 - [RL2]
    Given an "initiate retro" request task is completed by requestor
    When the Market Lead opens the task
    Then there is a "Market Lead Decision" section at the top
    And there is Help text "Please review the below information regarding a Retro Approval Request. You will need to Approve or Deny the request within 2 business days. If denying the request, a Denial Reason and Comments are required."
    And Market lead has 3 decision options- "Approve" and "Deny" , Request More Information
    And a comments field to write in user input - Comments field will be mandatory only if "Deny" is selected, otherwise it is optional.

