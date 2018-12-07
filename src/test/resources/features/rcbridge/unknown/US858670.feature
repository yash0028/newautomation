# Last updated on 
@MVP
@CLM_UAT
@EXARI-11273
@US858670
@MVP
@releaseUnknown
@iterationUnknown
Feature: US858670 - View Relationship Time Lining History

  @TC564423
  @Automated
  @Functional
  @MVP
  @CLM_UAT
  @EXARI-11273
  Scenario: TC564423 - [RL0]
    Given I am a User with access to view and maintain Entity information
    When I want to view relationship time lining history between two Entities
    Then I can view the effective date for each relationship
    And I can view the end date for each relationship
    And I can view the User who entered a date for each relationship
    And I can view the date and time of when the User entered each date for each relationship

