# Last updated on 
@MVP
@Amrutha
@Priority
@US1185585
@2018.PI03
Feature: US1185585 - [Continued][Continued] [Continued] Contract Product Description Crosswalk

  @TC564546
  @Automated
  @Functional
  Scenario Outline: TC564546 - [RL0]
    Given a product description to product code crosswalk exists
    And using contract description from the corresponding ""
    When exchanging information about the products included or excluded from an Exari contract
    Then the crosswalk provides the product code identifier of ""
    Examples:
      | contractDescriptionId | productCodeList       |
      | 2000540 |
      | 2000550 |
      | 2000560 |
      | 2000570 |
      | 2000580 |
      | 2000590 |
      | 2000600 |
      | 2000610 |
      | 2000620 |
    #Example fail cases

