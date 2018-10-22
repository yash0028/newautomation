# Last updated on
@US1094038
@Plus
@F155316
@releaseUnknown
@iterationUnknown
Feature: US1094038 - Capture Reason for Identifier Inactivation or Void

  @TC565697
  @Automated
  @Functional
  @US1094038
  Scenario: TC565697 - [RL0]
    Given I am a User with access to maintain Entity information
    When I am inactivating or voiding an Identifier
    Then I am required to provide a reason for inactivating or voiding the Identifier prior to completing the action
    And the system stores my reason for deactivation
    And the system stores my User credentials
    And the system stores the date and time when I performed the action

