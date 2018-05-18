# Last updated on 2018-05-11T16:04:03.059Z
@Parity
Feature: F181649 - Create production environment

  Scenario: US1071189
    Given I enter my userid and password on the Exari Production login page
    When I select the Exari Production URL in an Internet Explorer Browser
    Then I have the ability to access the Exari Production environment

