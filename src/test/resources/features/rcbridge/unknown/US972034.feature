# Last updated on 
@Retro
@US972034
@releaseUnknown
@iterationUnknown
Feature: US972034 - Field on Initiate Retro Form - Retro Why can't move effective date

  @TC703879
  @Manual
  @Functional
  @Retro
  Scenario: TC703879 - [RL0]
    Given A retro approval has been triggered.
    When I click on "Why can't the effective date be moved?"
    Then A free form long text box is available for input.
    And The information input into the field can be saved.

