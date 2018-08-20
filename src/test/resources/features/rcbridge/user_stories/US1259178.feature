# Last updated on 
@Mark
@US1259178
@2018.PI03
Feature: US1259178 - Taxonomy Grid table microservice

  @TC543879
  @Automated
  @Functional
  Scenario: TC543879 - Multiple Records Validation
    #What values return multiple records and how do we know "all records that matched"?
    Given a user needs to query the table
    When the query response result includes more than one record
    Then the response includes all records that matched

  @TC543877
  @Automated
  @Functional
  Scenario Outline: TC543877 - Optional Attributes Validation
    Given a user needs to query the table
    When the user provides the value <reqValue> for <reqField> and <ndbRecValue> for "ndbRec"
    And the user provides the optional value <optionalValue> for <optionalField>
    Then the query response provides the most recent record version attributes data
    Examples:
      | reqField      | reqValue      | ndbRecValue   | optionalField | optionalValue |
      | "ndbSpecCD" | "21"        | "P"         | "ndbOrg"    | "21"        |
      | "ndbOrg"    | "22"        | "O"         | "ndbSpecCD" | "22"        |

  @TC543876
  @Automated
  @Functional
  Scenario Outline: TC543876 - Non optional Attributes Validation
    Given a user needs to query the table
    When the user provides the value <reqValue> for <reqField> and <ndbRecValue> for "ndbRec"
    Then the query response provides the most recent record version attributes data
    Examples:
      | reqField    | reqValue    | ndbRecValue |
      | "ndbSpecCD" | "21"        | "P"         |
      | "ndbOrg" | "22"     | "O"      |

