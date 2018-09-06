# Last updated on 
@MVP
@US934699
@2018.PI01
Feature: US934699 - Promote key select data from one Exari environment to another

  @TC565465
  @Automated
  @Functional
  Scenario: TC565465 - [RL0]
    Given I setup key select data in an Exari environment
    When I have completed setups
    Then I am able to promote it to other environments

