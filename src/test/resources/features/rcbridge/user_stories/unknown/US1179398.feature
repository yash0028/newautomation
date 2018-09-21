# Last updated on 
@US1179398
Feature: US1179398 - Messenger Model IPA

  @TC564777
  @Automated
  @Functional
  Scenario: TC564777 - [RL0]
    Given I am a User
    When I create a relationship between an Entity and a Messenger Model IPA
    Then I can select Affiliated Relationship Type
    And I can not select Owned Relationship Type

