# Last updated on 
@EXARI-11274
@US1093322
@F196735
@releaseUnknown
@iterationUnknown
Feature: US1093322 - Search Street Address

  @TC565590
  @Automated
  @Functional
  @EXARI-11274
  @US1093322
  Scenario: TC565590 - [RL0]
    Given I am a User with access to view or maintain Entity information
    When I want to find an Entity to view or maintain
    Then I can search by Street Address
    And The solution displays Entity records matching my search criteria
    And Results display with best match presented first

