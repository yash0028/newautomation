# Last updated on 
@Retro
@US966312
@releaseUnknown
@iterationUnknown
Feature: US966312 - Create Form Initiate Retro - Capture retro data

  @TC565276
  @Automated
  @Functional
  @Retro
  Scenario: TC565276 - [RL0]
    Given retro approval is needed
    When I initiate a request for approval
    Then I can input all the necessary details as required
    And there are multiple sections for these details

