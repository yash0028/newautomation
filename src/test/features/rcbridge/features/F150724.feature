# Last updated on 2018-04-24T00:27:34.381Z
@MVP
@CLM_Exari
Feature: F150724 - Setup Exari Dev Environment

  @MVP
  @CLM_UAT
  @2018.PI01
  @2018.PI01.01
  Scenario: US948771
    Given I enter my userid and password on the Exari development login page
    When I select the Exari development URL in an Internet Explorer Browser
    Then I have the ability to access the Exari development environment

