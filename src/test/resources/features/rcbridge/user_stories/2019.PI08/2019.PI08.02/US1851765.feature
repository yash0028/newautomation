# Last updated on 
@Arvind
@Adele_R
@US1851765
@2019.PI08
@2019.PI08.02
@releasePresent
@iterationPresent
Feature: US1851765 - 10 Provider requesting a reconsideration - Rate Escalator

  @TC866268
  @Manual
  @Functional
  @Arvind
  @Adele_R
  Scenario: TC866268 - [RL0]
    Given the "Provider requested a reconsideration" task is created
    When the results of the reconsideration are obtained
    Then the form has "Has the provider met the targets?* : Radio button with option Yes and No" using same variables from task 9
    And the due date is 30 or 90 days based upon answer in Analyze PBC Reports
    And the assignee is the contractor
    And upon completion the Request HCE Modeling task is created

