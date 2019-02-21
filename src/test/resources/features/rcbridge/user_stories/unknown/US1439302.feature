# Last updated on 
@RC_invalid
@EXARI-13937
@US1439302
@releaseUnknown
@iterationUnknown
Feature: US1439302 - Post-Execution Reporting for Mass Action Projects

  @TC644178
  @Manual
  @Functional
  @RC_invalid
  @EXARI-13937
  Scenario: TC644178 - [RL1]
    Given a CONTRACT has been added to a Mass Action Project
    When the Gather Data process has been completed
    And the Interview document has not been verified
    Then the status should display as "Draft"

  @TC644180
  @Manual
  @Functional
  @RC_invalid
  @EXARI-13937
  Scenario: TC644180 - [RL2]
    Given a CONTRACT has been added to a Mass Action Project
    When the Gather Data process has been completed
    And the Interview document has been verified
    Then the status should display as "Doc Verified"

  @TC644182
  @Manual
  @Functional
  @RC_invalid
  @EXARI-13937
  Scenario: TC644182 - [RL3]
    Given a CONTRACT has been added to a Mass Action Project
    When the Run Project button is clicked
    Then the CONTRACT status should display as "Doc In Progress"

