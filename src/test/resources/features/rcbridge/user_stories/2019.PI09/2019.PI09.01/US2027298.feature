# Last updated on 
@Arvind
@Adele_R
@US2027298
@2019.PI09
@2019.PI09.01
@releasePresent
@iterationPresent
Feature: US2027298 - Locked Language Request - Operations

  @TC967057
  @Manual
  @Functional
  @Arvind
  @Adele_R
  Scenario: TC967057 - [RL0]
    Given language change need is identified in Physician workflow
    When the task "Locked Language Request - Operations" is created
    Then the assignee is the Process Initiator or the Contractor
    And the form "Locked Language Request - Operations"* has a question "Have you discussed this request with operations and can it be supported on our platforms?"* with radio buttons Yes and No
    And the form has 2 outcome buttons - "Approve Locked Language Request" and "Deny Locked Language Request"

  @TC967068
  @Manual
  @Functional
  @Arvind
  @Adele_R
  Scenario: TC967068 - [RL1]
    Given "Locked Language Request - Operations" is assigned to the contractor
    When "Approve Locked Language Request" button is selected
    Then the contractor needs to upload the approval mail from the operations team
    And a comments field to write in user input - "Comments" field will be optional only if "Deny Locked Language Request" is selected.

  @TC967074
  @Manual
  @Functional
  @Arvind
  @Adele_R
  Scenario: TC967074 - [RL2]
    Given "Locked Language Request - Operations" is assigned to the contractor
    When "Deny Locked Language Request" button is selected
    Then the language change request is assigned back to the contractor with the comments added by operations team
    And the contractor sees the original form in edit mode, submitted along with the additional comments provided by Market Lead
    And the contractor receives a mail about the denial.

  @TC967080
  @Manual
  @Functional
  @Arvind
  @Adele_R
  Scenario: TC967080 - [RL3]
    Given language change request is denied due to operations team comments
    When contractor opens the task assigned "Locked Language Request Denied"
    Then the contractor is able to modify the request as per the comments provided by the Market Lead
    And once contractor completes, the task "Locked Language Request - Operations" is assigned to the contractor
    And comments are still shown on the form

