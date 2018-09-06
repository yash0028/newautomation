# Last updated on 
@EXARI-11271
@US858605
@2018.PI03
Feature: US858605 - Capture Approval Time Lining History

  @TC565125
  @Automated
  @Functional
  Scenario: TC565125 - [RL0]
    Given I am the Entity Management solution
    When A modification flows through the approval process
    Then I capture the date and time the modification was performed
    And I capture the User who performed the change
    And I capture the date and time the approval was granted
    And I capture the User with Approval Authority who approved the change

