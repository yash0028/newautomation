# Last updated on 
@MVP
@CLM_UAT
@EXARI-11273
@US858611
Feature: US858611 - View Importation Time Lining History

  @TC564550
  @Automated
  @Functional
  Scenario: TC564550 - [RL0]
    Given I am a User with access to view and maintain Entity information
    When I want to view Entity import history
    Then I can view the User who imported the Entity data
    And the time and date on which the User imported the Entity data

