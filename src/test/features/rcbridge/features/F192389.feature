# Last updated on 2018-05-24T20:00:09.503Z
@MVP
@CLM_Exari
Feature: F192389 - Define Mass Actions

  @MVP
  @EXARI-11455
  @CLM_Exari
  @2018.PI02
  @2018.PI02.02
  Scenario: US1137949
    Given I am a Mass Actions Administrator
    When I access the Mass Actions UI
    Then is will be able to view a table/basic view of the Mass Action Definitions

  @MVP
  @EXARI-11525
  @CLM_Exari
  @2018.PI02
  @2018.PI02.03
  Scenario: US1137951
    Given I am a Mass Action Administrator
    When a new Mas Action Definition is identified
    Then I will be able to create a new Mass Action definition
    Then And I will be able to input a Mass Action definition name
    Then And I will be able to input a Mass Action definition description

  @MVP
  @EXARI-11456
  @CLM_Exari
  Scenario: US1138071
    Given I am a Mass Actions Administrator
    When I access the Mass Actions UI
    Then is will be able to view a more detailed view of the Mass Action Definitions
