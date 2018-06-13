# Last updated on 2018-06-12T15:27:03.239Z
@MVP
@PI04
@Plus
Feature: F165531 - Setup Rate Escalator Workflow

  Scenario: US1164616::0
    Given a contract with an escalator and chargemaster
    When I view the escalator summary
    Then I see Rate Escalator Type
    And I see the Inpatient Escalator Percent
    And I see the Outpatient Escalator Percent

  Scenario: US1164616::1
    Given a contract with chargemaster is identified
    When I click on 'Chargemaster Summary"
    Then I am able to view the details

