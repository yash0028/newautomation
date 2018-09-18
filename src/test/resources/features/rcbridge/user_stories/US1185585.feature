# Last updated on 
@MVP
@Amrutha
@Priority
@US1185585
@2018.PI03
Feature: US1185585 - Contract Product Description Crosswalk

  @TC569866
  @Automated
  @Functional
  Scenario: TC569866 - [RL4] Validate error message for passing in multiple bad product descriptions
    # Passing in multiple invalid product descriptions
    Given multiple product descriptions that do not exist
    When exchanging information about the products included or excluded from an Exari contract
    Then the crosswalk provides an empty list

  @TC569883
  @Automated
  @Functional
  Scenario Outline: TC569883 - [RL1] Validate that the crosswalk provides the product code list for multiple corresponding product descriptions
    # Passing in multiple valid product descriptions
    Given a product description to product code crosswalk exists
    And using product descriptions from the corresponding "<productDescriptionId1>" and "<productDescriptionId2>"
    When exchanging information about the products included or excluded from an Exari contract
    Then the crosswalk provides the product code identifiers of "<productCodeList1>" and "<productCodeList2>"
    Examples:
      | productDescriptionId1 | productCodeList1      | productDescriptionId2 | productCodeList2      |
      | 2000290              | S0 S1 S2             | 2000300              | C0 C1 C2 P3 S0 S1 S2 |
      | 2000430 | DA      | 2000500 | 009 531 |

  @TC575413
  @Automated
  @Functional
  Scenario: TC575413 - [RL3] Validate error message for passing in one good and one bad product description
    # Passing in one valid and one invalid product description
    Given a product description from the corresponding "2000290" and an invalid product description
    When exchanging information about the products included or excluded from an Exari contract
    Then the crosswalk only provides the product code identifier for the valid product description

  @TC575412
  @Automated
  @Functional
  Scenario: TC575412 - [RL2] Validate error message for passing in one bad product description
    # Passing in a single invalid product description
    Given a product description that does not exist
    When exchanging information about the products included or excluded from an Exari contract
    Then the crosswalk provides an empty list

