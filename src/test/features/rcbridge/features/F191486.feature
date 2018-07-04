# Last updated on 2018-07-03T05:31:42.862Z
@MVP
@Parity
Feature: F191486 - Create Product Roster (2nd to Provider Roster)

  @2018.PI03
  Scenario: US1197983
    Given a contract includes or excludes products in appendix 2
    When those products are included in the product crosswalk
    Then they will be displayed on the product roster screen.

  @2018.PI03
  Scenario: US1197943
    Given a contract includes a product offering
    When a contracts product offering code or product code groups is available on the product crosswalk
    Then the product codes are displayed.

