# Last updated on 
@MVP
@EXARI-11526
@CLM_Exari
@US1137954
@2018.PI03
Feature: US1137954 - Update existing Mass Action definitions

  @TC565352
  @Automated
  @Functional
  Scenario: TC565352 - [RL0]
    Given I am a Mass Actions Administrator
    When I need to update a Mass Action Definition
    Then I can update the Mass Action Definition name
    And I can update the Mass Action Definition description

