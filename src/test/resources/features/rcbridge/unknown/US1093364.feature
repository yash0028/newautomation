# Last updated on 
@EXARI-11274
@US1093364
@releaseUnknown
@iterationUnknown
Feature: US1093364 - Search Postal Code

  @TC565080
  @Automated
  @Functional
  @EXARI-11274
  Scenario: TC565080 - [RL0]
    Given I am a User with access to view or maintain Entity information
    When I want to find an Entity to view or maintain
    Then I can search by Postal Code
    And The solution displays Entity records matching my search criteria
    And Results display with best match presented first

