# Last updated on 
@US1350249
@MVP
@PhyCon
@Plus
@F194519
@releaseUnknown
@iterationUnknown
Feature: US1350249 - Send attachments to PhyCon

  @TC593199
  @Manual
  @Functional
  @US1350249
  Scenario: TC593199 - [RL0]
    Given a demographic update has been requested
    When it is submitted
    Then the attachment is sent

