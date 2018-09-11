# Last updated on 
@US1301716
@2018.PI03
Feature: US1301716 - CMD Dashboard Navigation Bar

  @TC574134
  @Automated
  @Functional
  Scenario: TC574134 - [RL0]
    Given I have entered the CMD dashboard URL
    And I am recognized as a contract administrator with access to CMD
    When The dashboard page loads
    Then I can see the following as a heading on the CMD page "Contract Metadata, Reference Data, PCP Reassignment, Administration, FAQ, Help"

