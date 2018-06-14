# Last updated on 2018-06-14T16:08:34.003Z
@MVP
@Priority_1
@Parity
Feature: F177211 - Receive Exari Status Acknowledgements and run Status Reports to account for all contracts by Pilot Market Numbers

  @2018.PI03
  Scenario: US1088342
    Given when I am populating the Terms Table during the migration process
    When I reference a Term that is listed in the Term Driver Table
    Then I will not populate that Term in the Term Table

