# Last updated on 2018-04-24T00:25:01.367Z
@MVP
@CLM_Exari
Feature: F154549 - Setup Exari Training Environment

  @MVP
  @2018.PI01
  @2018.PI01.01
  Scenario: US934699
    Given I setup key select data in an Exari environment
    When I have completed setups
    Then I am able to promote it to other environments

  @MVP
  @2018.PI01
  @2018.PI01.01
  Scenario: US949049
    Given I enter my userid and password on the Exari training login page
    When I select the Exari development URL in an Internet Explorer Browser
    Then I have the ability to access the Exari training environment

