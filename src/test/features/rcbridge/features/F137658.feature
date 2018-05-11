# Last updated on 2018-04-27T19:41:13.339Z
@MVP
Feature: F137658 - Approve Entity Modifications

  Scenario: US858604
    Given I am a User with Approval Authority
    When I receive an Entity modification that requires my approval
    Then I can review the proposed modification
    Then And I can approve the proposed modification
    Then And The Entity record is updated with the new value(s)

  Scenario: US858603
    Given I am a User with access to maintain Entity information
    When I make a change that requires approval
    Then the change flows through an approval process

