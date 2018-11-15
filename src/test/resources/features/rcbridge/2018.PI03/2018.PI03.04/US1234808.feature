# Last updated on 
@MSPS
@US1234808
@2018.PI03
@2018.PI03.04
@MVP
@Plus
@Priority_1
@Exari_Microservice
@releasePast
@iterationPast
Feature: US1234808 - Enhancement to Fee Schedule External Data Query

  @TC554639
  @Manual
  @Functional
  @MSPS
  Scenario: TC554639 - [RL0] Happy Path MSPS Professional EDQ Validation
    Given a fee schedule is searched
    When the resource is streamed to Exari
    Then the end result is an encoded string on the Exari side

  @TC554644
  @Manual
  @Functional
  @MSPS
  Scenario: TC554644 - Happy Path MSPS Faclility EDQ Validation
    Given a faclility fee schedule is searched
    When the resource is streamed to Exari
    Then the end result is an encoded string on the Exari side

  @TC554647
  @Manual
  @Functional
  @MSPS
  Scenario: TC554647 - Bad Path MSPS Faclility EDQ Validation
    Given an invalid faclility fee schedule is searched
    When the resource is streamed to Exari
    Then the end result is a blank result on the Exari side

