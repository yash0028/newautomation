# Last updated on 
@MVP
@CLM_UAT
@US858694
@MVP
@Priority_1
@releaseUnknown
@iterationUnknown
Feature: US858694 - Setup Relationship Options

  @TC565707
  @Automated
  @Functional
  @MVP
  @CLM_UAT
  Scenario: TC565707 - [RL0]
    Given I am an Administrative User
    When I want to setup a new Relationship option
    Then I can setup a Relationship option
    And Users can select that Relationship option to define a connection between Entities

