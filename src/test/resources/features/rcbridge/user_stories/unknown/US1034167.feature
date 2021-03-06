# Last updated on 
@Facility
@US1034167
@releaseUnknown
@iterationUnknown
Feature: US1034167 - Provide chargemaster summary via the 'Contract Summary'

  @TC565059
  @Manual
  @Functional
  @Facility
  Scenario: TC565059 - [RL0]
    Given a contract with chargemaster is identified
    When I click on 'Chargemaster Summary"
    Then I am able to view the details
    And Chargemaster language, Section 4.1d
    And What the provider is allowed to do
    And Duty to give notice
    And How we're going to do the changes
    And the Cap Amount - Percent increase allowed
    And PPR reimbursement category
    And "Lessor of" language
    And any non-standard language

