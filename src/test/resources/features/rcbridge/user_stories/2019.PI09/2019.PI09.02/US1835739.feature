# Last updated on 
@US1835739
@2019.PI09
@2019.PI09.02
@releasePresent
@iterationFuture
Feature: US1835739 - Inform user to get retro approval during rate escalator (non-hopper)

  @TC960849
  @Manual
  @Functional
  Scenario: TC960849 - [RL1]
    Given the difference of effective date and current date is less than or equal to 15 days
    When Submit for Loading task is not completed for West region
    Then contractor or initiator needs to start the retro process
    And the contractor need to get retro approval
    And the initiator is not able to open Submit for Loading task

