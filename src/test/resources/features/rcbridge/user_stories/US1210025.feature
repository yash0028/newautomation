# Last updated on 
@kumar,_Sachin
@MEG
@US1210025
@2018.PI03
Feature: US1210025 - [Continued] Build External Data Query - MEG

  @TC543863
  @Manual
  @Functional
  Scenario: TC543863 - [RL0] Happy Path MEG EDQ Validation
    When the MEG microservice is called
    Then a valid MEG response is returned

  @TC543864
  @Manual
  @Functional
  Scenario: TC543864 - Bad Path MEG EDQ Validation
    When the MEG microservice is called
    Then an ivalid response is returned

