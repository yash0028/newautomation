# Last updated on 
@MVP
@CLM_UAT
@EXARI-11273
@US858619
@2018.PI03
Feature: US858619 - View Identifier Time Lining History

  @TC564586
  @Automated
  @Functional
  Scenario: TC564586 - [RL0]
    Given I am a User with access to view and maintain Entity information
    When I want to view history of identifier additions to an Entity
    And I want to view history of identifier removals from an Entity
    Then I can view the identifier previous value
    And I can view the identifier current value
    And I can view the User who performed the value change
    And I can view the time and date on which the User performed the value change

