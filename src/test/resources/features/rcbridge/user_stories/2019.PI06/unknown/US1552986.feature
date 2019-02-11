# Last updated on 
@US1552986
@2019.PI06
@releasePresent
@iterationUnknown
Feature: US1552986 - Close the retro approval process - successful - physician

  @TC714610
  @Manual
  @Functional
  Scenario: TC714610 - [RL0]
    Given the retro request has an associated physician workflow
    When the associated physician workflow has notified the retro that the"Track Status of Physician Contract Installation" task is completed
    Then the retro process is closed
    And the status is "Successful"

  @TC714612
  @Manual
  @Functional
  Scenario: TC714612 - [RL1]
    Given the retro request does not have an associated workflow (Benefit Ops)
    When the associated agreement has been executed
    Then the retro process is closed
    And the status is "Successful"

