# Last updated on 
@MVP
@EXARI-10529
@CLM_UAT
@US858730
@MVP
@Plus
@releaseUnknown
@iterationUnknown
Feature: US858730 - View Provider Detail

  @TC565443
  @Automated
  @Functional
  @MVP
  @EXARI-10529
  @CLM_UAT
  Scenario: TC565443 - [RL0]
    Given I am a User with access to view and maintain Entity information
    When I am viewing a Provider in the Entity Management Solution
    Then I can see all Identifiers on the Provider record
    And I can see all demographic information on the Provider record

