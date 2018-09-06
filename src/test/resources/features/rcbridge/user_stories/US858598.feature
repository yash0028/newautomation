# Last updated on 
@MVP
@EXARI-11273
@US858598
@2018.PI03
Feature: US858598 - Capture Entity Time Lining History - New Entity

  @TC564753
  @Automated
  @Functional
  Scenario: TC564753 - [RL0]
    Given I am the Entity Management solution
    When A User creates an Entity
    Then I store the Entity creation date
    And the User who created the Entity

