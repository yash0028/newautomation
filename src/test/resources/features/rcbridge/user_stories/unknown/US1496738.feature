# Last updated on 
@US1496738
@releaseUnknown
@iterationUnknown
Feature: US1496738 - Enhance User experience to return to the CC after completing a section

  @TC765096
  @Manual
  @Functional
  Scenario: TC765096 - [RL0]
    #Scenario 1: New PSV
    Given I am performing a PSV
    When I have entered data into a 'new' PSV and have hit 'Save'
    Then I will be routed directly back into my CC and will NO LONGER see the 'read-only' view of what I just entered

  @TC765098
  @Manual
  @Functional
  Scenario: TC765098 - [RL1]
    #Scenario 2: Edit Existing PSV
    Given I am performing a PSV
    When I have entered data into an 'existing' PSV via using 'Edit' functionality and have hit 'Save'
    Then I will be routed directly back into my CC and will NO LONGER see the 'read-only' view of what I just entered

