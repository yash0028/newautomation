# Last updated on 
@US1867620
@2019.PI08
@releasePresent
@iterationUnknown
Feature: US1867620 - Retrofit the retro process with the business calendar stencil

  @TC902688
  @Manual
  @Functional
  Scenario: TC902688 - [RL0]
    Given the retro process exists
    When the due dates are calculated
    Then stencil is used.

