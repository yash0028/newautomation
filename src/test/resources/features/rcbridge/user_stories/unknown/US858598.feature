# Last updated on 
@MVP
@EXARI-11273
@US858598
@MVP
@Plus
@Priority_1
@F137657
Feature: US858598 - Capture Entity Time Lining History - New Entity

  @TC564753
  @Automated
  @Functional
  @MVP
  @EXARI-11273
  @US858598
  Scenario: TC564753 - [RL0]
    Given I am the Entity Management solution
    When A User creates an Entity
    Then I store the Entity creation date
    And the User who created the Entity

