# Last updated on 
@US1439302
@Plus
@Mass_Actions
@releaseUnknown
@iterationUnknown
Feature: US1439302 - Display comprehensive status in words

  @TC644178
  @Manual
  @Functional
  Scenario: TC644178 - [RL1]
    Given a CONTRACT has been added to a Mass Action Project
    When the Gather Data process has been completed
    And the Interview document has not been verified
    Then the status should display as "Draft"

  @TC644180
  @Manual
  @Functional
  Scenario: TC644180 - [RL2]
    Given a CONTRACT has been added to a Mass Action Project
    When the Gather Data process has been completed
    And the Interview document has been verified
    Then the status should display as "Doc Verified"

  @TC644182
  @Manual
  @Functional
  Scenario: TC644182 - [RL3]
    Given a CONTRACT has been added to a Mass Action Project
    When the Run Project button is clicked
    Then the CONTRACT status should display as "Doc In Progress"

