# Last updated on
@MVP
@CLM_UAT
@EXARI-11274
@US1093318
@MVP
@Plus
@Priority_1
@F154296
@releaseUnknown
@iterationUnknown
Feature: US1093318 - Search Alternate Name

  @TC565757
  @Automated
  @Functional
  @MVP
  @CLM_UAT
  @EXARI-11274
  @US1093318
  Scenario: TC565757 - [RL0]
    Given I am a User with access to view or maintain Entity information
    When I want to find an Entity to view or maintain
    Then I can search by Alternate Name
    And the solution displays Entity records matching my search criteria
    And Results display with best match presented first

