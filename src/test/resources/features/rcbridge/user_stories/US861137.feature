# Last updated on 
@US861137
@2018.PI03
Feature: US861137 - Enable External Reporting

  @TC565114
  @Automated
  @Functional
  Scenario: TC565114 - [RL0]
    Given I am the Entity Management Solution
    When an external recipient with no User access needs to receive Entity information
    Then I can provide Entity data to the recipients

