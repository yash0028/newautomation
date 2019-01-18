# Last updated on
Feature: temp

  @temp
  @User_Interface
  Scenario: Create Type 2 Error
    Given I am logged into Exari Dev as a valid user and go to the "southeast uhn" site
    And I author a contract using the "eif-cps-lookup.json" flow without final capture
