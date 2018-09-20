# Last updated on 
@MVP
@EXARI-11643
@CLM_UAT
@US858627
Feature: US858627 - Add Attachments

  @TC565610
  @Automated
  @Functional
  Scenario: TC565610 - [RL0]
    Given I am a User with access to maintain Entity information
    When I want to associate a document to an Entity
    Then I can associate a document to the Entity
    And my document is linked to the Entity record
    And the date and time is systematically logged with my attachment
    And my user credentials are systematically logged with my attachment

