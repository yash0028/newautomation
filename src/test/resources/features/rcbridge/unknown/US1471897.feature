# Last updated on 
@MVP
@US1471897
@MVP
@Priority_1
@releaseUnknown
@iterationUnknown
Feature: US1471897 - Expire Attachment Type

  @TC669305
  @Manual
  @Functional
  @MVP
  Scenario: TC669305 - [RL0]
    Given I am an Administrative User
    When I need to expire an Attachment Type
    Then I can expire an existing Attachment Type
    And Users can no longer select that Attachment Type to define an Attachment
    And all records using that Attachment Type retain the value

