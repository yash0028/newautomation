# Last updated on 
@US1071189
@2018.PI03
Feature: US1071189 - Setup Exari Production Environment and URL

  @TC565069
  @Automated
  @Functional
  Scenario: TC565069 - [RL0]
    Given I enter my userid and password on the Exari Production login page
    When I select the Exari Production URL in an Internet Explorer Browser
    Then I have the ability to access the Exari Production environment

