# Last updated on 
@MVP
@CLM_UAT
@US949049
@2018.PI01
@2018.PI01.01
Feature: US949049 - Setup Exari Training Environment and URL

  @TC565626
  @Automated
  @Functional
  Scenario: TC565626 - [RL0]
    Given I enter my userid and password on the Exari training login page
    When I select the Exari development URL in an Internet Explorer Browser
    Then I have the ability to access the Exari training environment

