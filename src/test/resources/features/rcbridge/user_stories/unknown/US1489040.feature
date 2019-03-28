# Last updated on 
@US1489040
@releaseUnknown
@iterationUnknown
Feature: US1489040 - Route incoming work to Scrubber Queue

  @TC765097
  @Manual
  @Functional
  Scenario: TC765097 - [RL0]
    #Scenario 1: New Queue
    Given I am a System Admin, Manager or Workforce Management User
    When I am looking to see what inventory has been received for the day for assigned to staff
    Then I will now see 'new' requests in the TBD Queue instead of the RFP Unassigned or CAQH Unassigned Queues (this can vary depending on how the intake is received)

