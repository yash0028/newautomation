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
  Scenario Outline: TC564546 - [RL0] Validate that the crosswalk provides the product code list for the corresponding contract description
    Given a product description to product code crosswalk exists
    And using contract description from the corresponding "<contractDescriptionId>"
    When exchanging information about the products included or excluded from an Exari contract
    Then the crosswalk provides the product code identifier of "<productCodeList>"
    Examples:
      | contractDescriptionId | productCodeList       |
      | 2000290  | S0 S1 S2 |
      | 2000300              | C0 C1 C2 P3 S0 S1 S2 |
      | 2000430 | DA      |
      | 2000500 | 009 531 |

  @TC569883
  @Automated
  @Functional
  Scenario: TC569883 - [RL1]
    #Fail case
    Given a product description to product code crosswalk does not exist
    When exchanging information about the products included or excluded from an Exari contract
    Then the crosswalk returns an error

