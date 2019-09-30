# Last updated on 
@US1789634
@2019.PI07
@2019.PI07.04
@releasePast
@iterationPast
Feature: US1789634 - Top-level CMD errors need to show all child errors

  @TC823046
  @Manual
  @Functional
  Scenario: TC823046 - [RL0]
    Given a contract that has been successfully installed
    When there's an amendment that changes the fee schedule on one product group
    And there's at least one PCP provider with a contract line on that product that needs reassignment information generating a Type 1 PCP reassignment error
    And the replacement fee schedule will generate one Type 1 Contract Master Override error
    Then CMD will show a top-level work object for the amendment that 'Requires Action'
    And drilling into this top-level work object CMD will show a list of child work objects including:[ 1) The CM override work object 2) All of the PCP reassignment work object(s)]

