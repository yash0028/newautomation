# Last updated on 
@US1636310
@releaseUnknown
@iterationUnknown
Feature: US1636310 - Send Committee Grids to PDP API

  @TC765388
  @Manual
  @Functional
  Scenario: TC765388 - [RL0]
    #Scenario 1: DNMC Committee Decisions Report
    Given I am preparing to send data to the PDP Database
    When I am reviewing the DNMC Committee Decisions Reports prior to 11/2017
    Then The system will now have this data loaded in the PDP Database

  @TC765390
  @Manual
  @Functional
  Scenario: TC765390 - [RL1]
    #Scenario 2: Facility and Ancillary Credentialing Assessments Report
    Given I am preparing to send data to the PDP Database
    When I am reviewing the Facility and Ancillary Credentialing Assessments Reports prior to 11/2017
    Then The system will now have this data loaded in the PDP Database

  @TC765391
  @Manual
  @Functional
  Scenario: TC765391 - [RL2]
    #Scenario 3: Meets Criteria Medical Director Decisions Report
    Given I am preparing to send data to the PDP Database
    When I am reviewing the Meets Criteria Medical Director Decisions Reports prior to 11/2017
    Then The system will now have this data loaded in the PDP Database

