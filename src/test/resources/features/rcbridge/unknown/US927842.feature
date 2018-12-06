# Last updated on 
@MVP
@CLM_UAT
@EXARI-11273
@US927842
@MVP
@Plus
@releaseUnknown
@iterationUnknown
Feature: US927842 - View Provider to Entity Relationship Time Lining History

  @TC564713
  @Automated
  @Functional
  @MVP
  @CLM_UAT
  @EXARI-11273
  Scenario: TC564713 - [RL0]
    Given I am a User with access to view and maintain Entity information
    When I want to view relationship time line history between a Provider and an Entity
    Then I can view the relationship effective date
    And I can view the relationship end date
    And I can view the User who entered each date
    And I can view the date and time of when the User entered each date

