# Last updated on 
@A_UI_Story
@US1233645
@2019.PI08
@releasePresent
@iterationUnknown
Feature: US1233645 - Create Contract Config Summary web page template

  @TC615268
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC615268 - [RL0]
    Given a OCM contract configuration record exists
    And the record is for a valid Exari contract id
    When information for the OCM record is needed in CMD
    Then the OCM record details are made available through CMD web UI
    And the information presented based on a predefined template layout
    ###

