# Last updated on 
@MVP
@contract-metadata-api
@Amrutha
@Priority
@US1185585
@2018.PI03
@2018.PI03.05
@releaseUnknown
@iterationUnknown
Feature: US1185585 - Contract Product Description Crosswalk

  @TC697427
  @Automated
  @Functional
  @MVP
  @contract-metadata-api
  @Amrutha
  @Priority
  Scenario Outline: TC697427 - [RL0]
    # Passing in a single valid product description
    Given a product description to product code crosswalk exists
    And using product description from the corresponding "<productDescription>"
    When exchanging information about the products included or excluded from an Exari contract
    Then the crosswalk provides the product code identifier of "<productCodeList>"
    Examples:
      | productDescription | productCodeList |
      | Empire             | P3              |
      | MEDICAID           | D0              |
      | CHARTER            | SG,SH,SI        |
      | VA Medicaid        | XX              |

  @TC697437
  @Automated
  @Functional
  @MVP
  @contract-metadata-api
  @Amrutha
  @Priority
  Scenario Outline: TC697437 - [RL1]
    # Passing in multiple valid product descriptions
    Given a product description to product code crosswalk exists
    And using product descriptions from the corresponding "<productDescription1>" and "<productDescription2>"
    When exchanging information about the products included or excluded from an Exari contract
    Then the crosswalk provides the product code identifiers of "<productCodeList1>" and "<productCodeList2>"
    Examples:
      | productDescription1 | productCodeList1 | productDescription2 | productCodeList2 |
      | Empire              | P3               | MEDICAID            | D0               |
      | CHARTER             | SG,SH,SI         | VA Medicaid         | XX               |

  @TC697441
  @Automated
  @Functional
  @MVP
  @contract-metadata-api
  @Amrutha
  @Priority
  Scenario: TC697441 - [RL2]
    # Passing in a single invalid product description
    Given a product description that does not exist
    When exchanging information about the products included or excluded from an Exari contract
    Then the crosswalk provides an empty list

  @TC701612
  @Manual
  @Functional
  @MVP
  @contract-metadata-api
  @Amrutha
  @Priority
  Scenario: TC701612 - [RL3]
    # Passing in one valid and one invalid product description
    Given a product description from the corresponding "Empire" and an invalid product description
    When exchanging information about the products included or excluded from an Exari contract
    Then the crosswalk only provides the product code identifier of "P3" for the valid product description

  @TC697442
  @Automated
  @Functional
  @MVP
  @contract-metadata-api
  @Amrutha
  @Priority
  Scenario: TC697442 - [RL3]
    # Passing in one valid and one invalid product description
    Given a product description from the corresponding "Empire" and an invalid product description
    When exchanging information about the products included or excluded from an Exari contract
    Then the crosswalk only provides the product code identifier of "P3" for the valid product description

  @TC697443
  @Automated
  @Functional
  @MVP
  @contract-metadata-api
  @Amrutha
  @Priority
  Scenario: TC697443 - [RL4]
    # Passing in multiple invalid product descriptions
    Given multiple product descriptions that do not exist
    When exchanging information about the products included or excluded from an Exari contract
    Then the crosswalk provides an empty list

