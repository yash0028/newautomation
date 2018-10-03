# Last updated on 
@MVP
@CLM_UAT
@US948771
@2018.PI01
@2018.PI01.01
@MVP
@CLM_Exari
@F150724
Feature: US948771 - Setup Exari Dev Environment and URL

  @TC564920
  @Automated
  @Functional
  @MVP
  @CLM_UAT
  @US948771
  @2018.PI01
  @2018.PI01.01
  Scenario: TC564920 - [RL0]
    Given I enter my userid and password on the Exari development login page
    When I select the Exari development URL in an Internet Explorer Browser
    Then I have the ability to access the Exari development environment

