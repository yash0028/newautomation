# Last updated on 
@MVP
@US860745
@2018.PI01
@2018.PI01.02
@releasePast
@iterationPast
Feature: US860745 - Setup Business Organizations

  @TC564565
  @Automated
  @Functional
  @MVP
  Scenario: TC564565 - [RL0]
    Given I am logged into Exari as a Business Administrator,
    When I select the Create Site button,
    Then I am able to enter the Name, Description, and Visibility, and select save.

