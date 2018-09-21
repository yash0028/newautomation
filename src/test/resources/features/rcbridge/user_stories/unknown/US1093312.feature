# Last updated on 
@MVP
@CLM_UAT
@EXARI-11274
@US1093312
Feature: US1093312 - Search Entity Name

  @TC565210
  @Automated
  @Functional
  Scenario: TC565210 - [RL0]
    Given I am a User with access to view or maintain Entity information
    When I want to find an Entity to view or maintain
    Then I can search by Entity Name
    And the solution displays Entity records matching my search criteria
    And Results display with best match presented first

