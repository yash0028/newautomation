# Last updated on 
@Arvind
@Suman
@US2022321
@2019.PI09
@2019.PI09.03
@releasePresent
@iterationPresent
Feature: US2022321 - Inform user to get retro approval during rate escalator (hopper) - physician

  @TC960848
  @Manual
  @Functional
  @Arvind
  @Suman
  Scenario: TC960848 - [RL0]
    Given for a physician process with hoppers
    When the difference of effective date and current date is less than or equal to 15 days
    Then contractor or initiator needs to start the retro process
    And the contractor need to get retro approval
    And the initiator is not able to open Submit for Loading task

