# Last updated on 
@MVP
@CLM_UAT
@EXARI-11274
@US858715
@2018.PI03
Feature: US858715 - Perform Search by Provider ID

  @TC565084
  @Automated
  @Functional
  Scenario: TC565084 - [RL0]
    Given I am a User with access to view and maintain Entity information
    When I want to find out which Entities a Provider is associated to
    Then I can search by Provider ID
    And the system displays all Entities related to that Provider

