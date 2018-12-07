# Last updated on 
@MVP
@CLM_UAT
@EXARI-11273
@US858699
@MVP
@releaseUnknown
@iterationUnknown
Feature: US858699 - View Characteristics Time Lining History

  @TC565258
  @Automated
  @Functional
  @MVP
  @CLM_UAT
  @EXARI-11273
  Scenario: TC565258 - [RL0]
    Given I am a User with access to view and maintain Entity information
    When I want to view time lining history for Entity Characteristics
    Then I can view Entity Characteristic effective dates
    And I can view the Entity Characteristic end dates
    And I can view the User who added or removed an Entity Characteristic
    And I can view the date and time of when the User performed the change

