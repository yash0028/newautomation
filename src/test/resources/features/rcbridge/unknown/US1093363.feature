# Last updated on 
@EXARI-11274
@US1093363
@F196735
@releaseUnknown
@iterationUnknown
Feature: US1093363 - Search State

  @TC564518
  @Automated
  @Functional
  @EXARI-11274
  @US1093363
  Scenario: TC564518 - [RL0]
    Given I am a User with access to view or maintain Entity information
    When I want to find an Entity to view or maintain
    Then I can search by State
    And The solution displays Entity records matching my search criteria
    And Results display with best match presented first

