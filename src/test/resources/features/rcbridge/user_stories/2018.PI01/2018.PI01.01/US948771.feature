# Last updated on 
@MVP
@CLM_UAT
@US948771
@2018.PI01
@2018.PI01.01
Feature: US948771 - Setup Exari Dev Environment and URL

  @TC564920
  @Automated
  @Functional
  Scenario: TC564920 - [RL0]
    Given I enter my userid and password on the Exari development login page
    When I select the Exari development URL in an Internet Explorer Browser
    Then I have the ability to access the Exari development environment

