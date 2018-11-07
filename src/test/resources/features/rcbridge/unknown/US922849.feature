# Last updated on 
@EXARI-11273
@US922849
@releaseUnknown
@iterationUnknown
Feature: US922849 - View Address Time Lining History

  @TC564432
  @Automated
  @Functional
  @EXARI-11273
  Scenario: TC564432 - [RL0]
    Given I am a User with access to view and maintain Entity information
    When I want to view address history for an Entity
    Then I can view previous addresses
    And I can view the current addresses
    And I can view the User who performed each address change
    And I can view the time and date on which the User performed the address change

