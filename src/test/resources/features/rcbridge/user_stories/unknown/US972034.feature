# Last updated on 
@Retro
@US972034
@Configuration_for_10/1/18
@MVP
@PI04
@Plus
@F165534
Feature: US972034 - Retro Why can't move effective date

  @TC565550
  @Automated
  @Functional
  @Retro
  @US972034
  @Configuration_for_10/1/18
  Scenario: TC565550 - [RL0]
    Given A retro approval has been triggered.
    When I click on "Why can't the effective date be moved?"
    Then A free form long text box is available for input.
    And The information input into the field can be saved.

