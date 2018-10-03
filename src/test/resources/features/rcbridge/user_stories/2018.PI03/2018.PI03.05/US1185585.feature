# Last updated on 
@MVP
@Amrutha
@Priority
@US1185585
@2018.PI03
@2018.PI03.05
@MVP
@10/1_Physician
@Crosswalk
@Priority_1
@CMD
@F201371
Feature: US1185585 - Contract Product Description Crosswalk

  @TC569866
  @Automated
  @Functional
  @MVP
  @Amrutha
  @Priority
  @US1185585
  @2018.PI03
  @2018.PI03.05
  Scenario: TC569866 - [RL4] Validate empty list for passing in multiple bad product descriptions
    # Passing in multiple invalid product descriptions
    Given multiple product descriptions that do not exist
    When exchanging information about the products included or excluded from an Exari contract
    Then the crosswalk provides an empty list

  @TC564546
  @Automated
  @Functional
  @MVP
  @Amrutha
  @Priority
  @US1185585
  @2018.PI03
  @2018.PI03.05
  Scenario Outline: TC564546 - [RL0] Validate that the crosswalk provides the product code list for a single corresponding product description
    # Passing in a single valid product description
    Given a product description to product code crosswalk exists
    And using product description from the corresponding "<productDescriptionId>"
    When exchanging information about the products included or excluded from an Exari contract
    Then the crosswalk provides the product code identifier of "<productCodeList>"
    Examples:
      | productDescriptionId | productCodeList      |
      | 2000290  | S0 S1 S2 |
      | 2000300              | C0 C1 C2 P3 S0 S1 S2 |
      | 2000430 | DA      |
      | 2000500 | 009 531 |

  @TC569883
  @Automated
  @Functional
  @MVP
  @Amrutha
  @Priority
  @US1185585
  @2018.PI03
  @2018.PI03.05
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
  @MVP
  @Amrutha
  @Priority
  @US1185585
  @2018.PI03
  @2018.PI03.05
  Scenario: TC575413 - [RL3] Validate only single valid product code list for passing in one good and one bad product description
    # Passing in one valid and one invalid product description
    Given a product description from the corresponding "2000290" and an invalid product description
    When exchanging information about the products included or excluded from an Exari contract
    Then the crosswalk only provides the product code identifier of "S0 S1 S2" for the valid product description

  @TC575412
  @Automated
  @Functional
  @MVP
  @Amrutha
  @Priority
  @US1185585
  @2018.PI03
  @2018.PI03.05
  Scenario: TC575412 - [RL2] Validate empty list for passing in one bad product description
    # Passing in a single invalid product description
    Given a product description that does not exist
    When exchanging information about the products included or excluded from an Exari contract
    Then the crosswalk provides an empty list

