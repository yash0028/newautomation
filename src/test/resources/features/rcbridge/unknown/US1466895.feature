# Last updated on 
@US1466895
@releaseUnknown
@iterationUnknown
Feature: US1466895 - Tax ID Type

  @TC677415
  @Manual
  @Functional
  Scenario: TC677415 - [RL0]
    Given I am a User with the ability to view or maintain Entity information
    When I look at Tax ID information
    Then I can see what Type or combination of Types, Ancillary, Physician, Facility, applies to the Tax ID

