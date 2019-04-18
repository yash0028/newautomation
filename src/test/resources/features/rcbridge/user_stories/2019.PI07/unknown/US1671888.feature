# Last updated on 
@US1671888
@2019.PI07
@releasePresent
@iterationUnknown
Feature: US1671888 - Add attachments

  @TC781399
  @Manual
  @Functional
  Scenario: TC781399 - [RL0]
    Given a retro request is being started
    When the details are being added
    Then there is a field, "Supporting detail, if needed" to upload attachments
    And there is a second field, "Supporting detail, if needed" to upload attachments

