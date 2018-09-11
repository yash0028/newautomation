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
  Scenario Outline: TC564546 - [RL0] Validate that the crosswalk provides the product code list for a single corresponding product description
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
  Scenario Outline: TC569883 - [RL1]
    # Passing in multiple valid product descriptions
    Given a product description to product code crosswalk exists
    And using product descriptions from the corresponding "" and ""
    When exchanging information about the products included or excluded from an Exari contract
    Then the crosswalk provides the product code identifiers of "" and ""
    Examples:
      | productDescriptionId1 | productCodeList1      | productDescriptionId2 | productCodeList2      |
      | 2000290              | S0 S1 S2             | 2000300              | C0 C1 C2 P3 S0 S1 S2 |
      | 2000430 | DA      | 2000500 | 009 531 |

  @TC575414
  @Automated
  @Functional
  Scenario: TC575414 - [RL4]
    # Passing in multiple invalid product descriptions
    Given multiple product descriptions that do not exist
    When exchanging information about the products included or excluded from an Exari contract
    Then the crosswalk returns an error

  @TC575413
  @Automated
  @Functional
  Scenario: TC575413 - [RL3]
    # Passing in one valid and one invalid product description
    Given a product description from the corresponding "2000290" and an invalid product description
    When exchanging information about the products included or excluded from an Exari contract
    Then the crosswalk returns an error

  @TC575412
  @Automated
  @Functional
  Scenario: TC575412 - [RL2]
    # Passing in a single invalid product description
    Given a product description that does not exist
    When exchanging information about the products included or excluded from an Exari contract
    Then the crosswalk returns an error

