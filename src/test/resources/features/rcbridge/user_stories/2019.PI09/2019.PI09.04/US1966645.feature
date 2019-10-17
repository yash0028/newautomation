# Last updated on 
@Arvind
@US1966645
@2019.PI09
@2019.PI09.04
@releasePresent
@iterationPresent
Feature: US1966645 - Request Clarification on Request - Escalator

  @TC960850
  @Manual
  @Functional
  @Arvind
  Scenario: TC960850 - [RL0]
    Given a user is on the "Submit Fee Schedules on the MSPS site" task
    When viewing the task
    Then there is a section, "Clarification Required"
    And there is a question, "is clarification required?" Yes/No
    And if Yes is selected there is a Comments (required)
    And upon completion, the task "Fee Schedule submission clarification needed" is assigned to the process initiator

  @TC967060
  @Manual
  @Functional
  @Arvind
  Scenario: TC967060 - [RL1]
    Given the user is on the "Fee Schedule submission clarification needed" task
    When the user views the task
    Then there is a "Clarification Required" section with comments shown from the "Submit Fee Schedules on the MSPS site" task
    And the rate escalator details from the "Review Rate Escalator Details" task are shown
    And the task has a due date of 2 business days
    And upon completion of the task, the task is person who requested the clarification

