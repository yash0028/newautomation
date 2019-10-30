# Last updated on 
@US2099163
@2019.PI09
@2019.PI09.03
@releasePresent
@iterationPast
Feature: US2099163 - Product Network Microservice Iteration 1

  @TC1019544
  @Automated
  @Functional
  Scenario: TC1019544 - [RL0]
    Given an OCM without the product details field
    When I send a request for the list product details in that OCM
    Then I receive a list of product details

  @TC1019546
  @Automated
  @Functional
  Scenario: TC1019546 - [RL1]
    Given an OCM without the product details field
    When I send a request for the OCM with product details
    Then I receive an OCM with the product groups details

