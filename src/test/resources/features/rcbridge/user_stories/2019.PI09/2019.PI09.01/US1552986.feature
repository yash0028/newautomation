# Last updated on 
@Arvind
@#QA
@US1552986
@2019.PI09
@2019.PI09.01
@releasePresent
@iterationPast
Feature: US1552986 - Close the retro approval process - successful - no physician workflow

  @TC714612
  @Manual
  @Functional
  @Arvind
  @#QA
  Scenario: TC714612 - [RL1]
    Given the "Retro Approval - Successful" task is created
    When the initiator views the task
    Then the initiator sees "Please complete this task once you have confirmation that the agreement has been successfully loaded on all of our platforms."

