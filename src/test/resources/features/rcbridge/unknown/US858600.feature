# Last updated on 
@MVP
@CLM_UAT
@EXARI-11273
@US858600
@MVP
@Plus
@releaseUnknown
@iterationUnknown
Feature: US858600 - View Entity Time Lining History

  @TC565493
  @Automated
  @Functional
  @MVP
  @CLM_UAT
  @EXARI-11273
  Scenario: TC565493 - [RL0]
    Given I am a User with access to view and maintain Entity information
    When I want to view the history of events and modifications for an Entity
    And I want to view the Users responsible for performing modifications to an Entity
    Then I can view Entity creation dates with Users who performed the changes
    And I can view Entity inactivation dates with Users who performed the changes
    And I can view Entity Type update dates with Users who performed the changes
    And I can view Entity update dates with Users who performed the changes

