# Last updated on 
@MVP
@CLM_Exari
@F154549
Feature: F154549 - Setup Exari Training Environment

  @MVP
  @US934699
  @2018.PI01
  Scenario: US934699 - Promote key select data from one Exari environment to another
    Given I setup key select data in an Exari environment
    When I have completed setups
    Then I am able to promote it to other environments

  @MVP
  @CLM_UAT
  @US949049
  @2018.PI01
  Scenario: US949049 - Setup Exari Training Environment and URL
    Given I enter my userid and password on the Exari training login page
    When I select the Exari development URL in an Internet Explorer Browser
    Then I have the ability to access the Exari training environment

