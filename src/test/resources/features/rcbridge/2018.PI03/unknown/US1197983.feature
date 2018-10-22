# Last updated on
@US1197983
@2018.PI03
@releasePast
@iterationUnknown
Feature: US1197983 - View the Product Code or Product Code Groups

  @TC564445
  @Automated
  @Functional
  @US1197983
  @2018.PI03
  Scenario: TC564445 - [RL0]
    Given a contract includes or excludes products in appendix 2
    When those products are included in the product crosswalk
    Then they will be displayed on the product roster screen.

