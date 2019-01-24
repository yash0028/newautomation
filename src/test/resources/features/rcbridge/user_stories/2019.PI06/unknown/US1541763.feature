# Last updated on 
@US1541763
@2019.PI06
@releaseFuture
@iterationUnknown
Feature: US1541763 - Market Lead Denies retro

  @TC709183
  @Manual
  @Functional
  Scenario: TC709183 - [RL0]
    Given a retro approval request exists with the market lead
    When the market lead denies the retro request
    Then the retro approval request is assigned and routed to the retro request initator
    And comments are required

