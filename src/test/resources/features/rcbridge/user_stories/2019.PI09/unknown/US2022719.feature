# Last updated on 
@Go_Live
@US2022719
@2019.PI09
@releasePresent
@iterationUnknown
Feature: US2022719 - Ensure workflow is being used

  @TC960462
  @Manual
  @Functional
  @Go_Live
  Scenario: TC960462 - [RL0]
    Given the Physician workflow has open tasks
    And the Planned Effective date is within one month of the current date (or in the past)
    When 7 days have passed with no tasks being completed
    Then the process initiator is sent an email (To:)
    And the process initiator's manager is sent an email (CC:)

  @TC960464
  @Manual
  @Functional
  @Go_Live
  Scenario: TC960464 - [RL1]
    Given the Physician workflow has open tasks
    And the Planned Effective date is more than one month of the current date
    When 14 days have passed with no tasks being completed
    Then the process initiator is sent an email (To:)
    And the process initiator's manager is sent an email (CC:)

