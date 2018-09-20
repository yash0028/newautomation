# Last updated on 
@US1221388
Feature: US1221388 - Select Attachment Type

  @TC565186
  @Automated
  @Functional
  Scenario: TC565186 - [RL0]
    Given I am a User with access to maintain Entity information
    When I am uploading an attachment to an Entity
    Then I must select an Attachment Type to define that attachment prior to uploading

