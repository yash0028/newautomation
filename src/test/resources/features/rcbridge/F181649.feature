# Last updated on 2018-07-10T15:36:13.365Z
@Parity
Feature: F181649 - Create production environment

  @2018.PI03
  Scenario: US1071189
    Given I enter my userid and password on the Exari Production login page
    When I select the Exari Production URL in an Internet Explorer Browser
    Then I have the ability to access the Exari Production environment
