# Last updated on 
@10/1_Physician
@Parity
@F181649
Feature: F181649 - Create production environment

  @US1071189
  @2018.PI03
  Scenario: US1071189 - Setup Exari Production Environment and URL
    Given I enter my userid and password on the Exari Production login page
    When I select the Exari Production URL in an Internet Explorer Browser
    Then I have the ability to access the Exari Production environment

  @US1285088
  @2018.PI03
  Scenario: US1285088 - Create Production Cosmos Landing Zone
    Given CLM - COSMOS integration Production environment
    When Cosmos send cosmoscontract and cosmospanel files
    Then CLM landing zone should be ready to accept the files

