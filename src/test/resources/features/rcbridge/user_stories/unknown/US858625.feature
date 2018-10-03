# Last updated on 
@EXARI-11273
@US858625
@F207082
Feature: US858625 - View Demographic Time Lining History

  @TC565528
  @Automated
  @Functional
  @EXARI-11273
  @US858625
  Scenario: TC565528 - [RL0]
    Given I am a User with access to view and maintain Entity information
    When I want to view historical changes to demographic information on an Entity
    Then I can view the previous demographic information value
    And I can view the current demographic information value
    And I can view the User who performed the demographic information value change
    And I can view the time and date the User performed the demographic information value change

