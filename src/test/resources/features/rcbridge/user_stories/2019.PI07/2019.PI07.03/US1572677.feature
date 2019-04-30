# Last updated on 
@US1572677
@2019.PI07
@2019.PI07.03
@releasePresent
@iterationFuture
Feature: US1572677 - Send retro email for "Approved"

  @TC743392
  @Manual
  @Functional
  Scenario: TC743392 - [RL0]
    Given a retro request status is "Approved"
    When it is in the "Monitor" phase
    Then the same email as generated with US 1584044 is used
    And it is sent to the Request initiator, Market Lead, Regional Lead

