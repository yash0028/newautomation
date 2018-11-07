# Last updated on 
@EXARI-11643
@Non_MVP
@US858630
@releaseUnknown
@iterationUnknown
Feature: US858630 - Archive Attachments

  @TC565715
  @Automated
  @Functional
  @EXARI-11643
  @Non_MVP
  Scenario: TC565715 - [RL0]
    Given I am a User with access to maintain Entity information
    When I need to archive an existing attachment on an Entity that is no longer valid
    Then I can enter an inactivation date for an attachment on the Entity
    And the Entity Management Solution archives the attachment
    And my User credentials are logged with the action

