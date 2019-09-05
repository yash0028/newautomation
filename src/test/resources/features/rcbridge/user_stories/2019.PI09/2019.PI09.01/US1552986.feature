# Last updated on 
@US1552986
@2019.PI09
@2019.PI09.01
@releasePresent
@iterationPresent
Feature: US1552986 - Close the retro approval process - successful - physician - no physician workflow

  @TC714612
  @Manual
  @Functional
  Scenario: TC714612 - [RL1]
    Given the "Retro Approval - Successful" task is created
    When the initiator views the task
    Then the initiator sees "Please complete this task once you have confirmation the agreement has been successfully loaded on all of our platforms."

