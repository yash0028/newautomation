# Last updated on 
@Arvind
@US2028497
@2019.PI09
@2019.PI09.04
@releasePresent
@iterationFuture
Feature: US2028497 - Add Termination Event ID to each form

  @TC967055
  @Manual
  @Functional
  @Arvind
  Scenario: TC967055 - [RL0]
    Given a Termination Event ID (term_event_id) exists for a process
    When a form is viewed
    Then it contains the Termination Event ID

