# Last updated on 
@US1278488
@2018.PI04
Feature: US1278488 - CMD- Action Required Page Design, layout, and fields

  @TC565527
  @Automated
  @Functional
  Scenario: TC565527 - [RL0]
    Given I am on the CMD dashboard
    And I have clicked on Action Required button on the CMD dashboard
    When I land on the CMD Action required page
    Then I can see the Contract Installation Error as page heading
    And I can see the following data header information on the page

