# Last updated on 
@MVP
@CLM_Exari
@F150724
Feature: F150724 - Setup Exari Dev Environment

  @MVP
  @CLM_UAT
  @US948771
  @2018.PI01
  Scenario: US948771 - Setup Exari Dev Environment and URL
    Given I enter my userid and password on the Exari development login page
    When I select the Exari development URL in an Internet Explorer Browser
    Then I have the ability to access the Exari development environment

