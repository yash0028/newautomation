# Last updated on 
@US1841125
@releaseUnknown
@iterationUnknown
Feature: US1841125 - Number of days until planned effective date

  @TC968857
  @Manual
  @Functional
  Scenario: TC968857 - [RL0]
    Given a physician negotiation exists
    When I input the Planned Effective Date
    Then I can see the number of days until the Planned Effective Date on the "Physician - Landing Page Multi Contract - 1" form
    And the field name is "Number of days until the Planned Effective Date"

