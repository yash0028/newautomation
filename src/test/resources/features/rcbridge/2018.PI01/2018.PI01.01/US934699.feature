# Last updated on
@MVP
@US934699
@2018.PI01
@2018.PI01.01
@MVP
@CLM_Exari
@F154549
@releasePast
@iterationPast
Feature: US934699 - Promote key select data from one Exari environment to another

  @TC565465
  @Automated
  @Functional
  @MVP
  @US934699
  @2018.PI01
  @2018.PI01.01
  Scenario: TC565465 - [RL0]
    Given I setup key select data in an Exari environment
    When I have completed setups
    Then I am able to promote it to other environments

