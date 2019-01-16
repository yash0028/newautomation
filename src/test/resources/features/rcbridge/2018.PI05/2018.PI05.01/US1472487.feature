# Last updated on 
@Optum
@US1472487
@2018.PI05
@2018.PI05.01
@releasePresent
@iterationPast
Feature: US1472487 - Calculate number of days to Planned Effective Date

  @TC669308
  @Manual
  @Functional
  @Optum
  Scenario: TC669308 - [RL0]
    Given a user is on the Physician - Landing Page form
    When the Planned Effective Date is input
    Then the number of days until the Planned Effective Date is displayed in the field "Number of Days to Planned Effective Date"

