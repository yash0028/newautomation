# Last updated on 
@A_UI_Story
@US1862618
@releaseUnknown
@iterationUnknown
Feature: US1862618 - Retrieve OCM provider contract record details

  @TC857035
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC857035 - [RL0]
    Given an contract configuration record exists in the OCM
    When information is needed from the OCM
    And information is requested via CMD web UI
    Then a service is made available to retrieve the details from the OCM
    ###

