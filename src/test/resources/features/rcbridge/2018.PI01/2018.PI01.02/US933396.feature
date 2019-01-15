# Last updated on 
@MVP
@US933396
@2018.PI01
@2018.PI01.02
@releasePast
@iterationPast
Feature: US933396 - Update Business Organizations

  @TC565204
  @Automated
  @Functional
  @MVP
  Scenario: TC565204 - [RL0]
    Given I am logged into Exari as a Business Administrator,
    When I select the Site button,
    Then I am able to update the Name, Description, and/or Visibility, and select save.

