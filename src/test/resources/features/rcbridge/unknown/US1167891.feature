# Last updated on 
@MVP
@EXARI-11249
@CLM_UAT
@EXARI-10726
@US1167891
@MVP
@Plus
@Priority_1
@releaseUnknown
@iterationUnknown
Feature: US1167891 - Select Identifier

  @TC565775
  @Automated
  @Functional
  @MVP
  @EXARI-11249
  @CLM_UAT
  @EXARI-10726
  Scenario: TC565775 - [RL0]
    Given I am a User with access to create Entities
    When I need to associate an Identifier to an Entity
    Then I can search for an Identifier
    And I can select an Identifier from the search results

