# Last updated on 
@Mark
@US1259178
@2018.PI03
Feature: US1259178 - Taxonomy Grid table microservice

  @TC543879
  @Automated
  @Functional
  Scenario: TC543879 - Multiple Records Validation
    #Test when query response result includes more than one recordGiven a user needs to query the table
    When the user provides the value "21" for "ndbSpecCD" and "P" for "ndbRec"
    Then the query response includes all records that matched

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

  @TC565559
  @Automated
  @Functional
  Scenario: TC565559 - [RL3]
    #Test when query response result includes more than one recordGiven a user needs to query the table
    When the user provides the value "21" for "ndbSpecCD" and "P" for "ndbRec"
    Then the query response includes all records that matched

  @TC565556
  @Automated
  @Functional
  Scenario Outline: TC565556 - [RL0]
    #Test happy paths
    Given a user needs to query the table
    When the user provides the value <reqValue> for <reqField> and <ndbRecValue> for "ndbRec"
    Then the query response provides the most recent record version attributes data
    Examples:
      | reqField    | reqValue    | ndbRecValue |
      | "ndbSpecCD" | "21"        | "P"         |
      | "ndbOrg" | "22"     | "O"      |

  @TC565557
  @Automated
  @Functional
  Scenario Outline: TC565557 - [RL1]
    #Test optional paths
    Given a user needs to query the table
    When the user provides the value <reqValue> for <reqField> and <ndbRecValue> for "ndbRec"
    And the user provides the optional value <optionalValue> for <optionalField>
    Then the query response provides the most recent record version attributes data
    Examples:
      | reqField      | reqValue      | ndbRecValue   | optionalField | optionalValue |
      | "ndbSpecCD" | "21"        | "P"         | "ndbOrg"    | "21"        |
      | "ndbOrg"    | "22"        | "O"         | "ndbSpecCD" | "22"        |

  @TC565558
  @Automated
  @Functional
  Scenario Outline: TC565558 - [RL2]
    #Tests both bad paths
    Given a user needs to query the table
    When the user provides the value <reqValue> for <reqField> and <ndbRecValue> for "ndbRec"
    Then the query response returns an error
    Examples:
      | reqField    | reqValue    | ndbRecValue |
      | "ndbSpecCD" | "22"        | "O"         |
      | "ndbOrg" | "22"     | "P"      |

  @TC551313
  @Automated
  @Functional
  Scenario Outline: TC551313 - Missing Attributes Validation
    #Tests both bad paths
    Given a user needs to query the table
    When the user provides the value <reqValue> for <reqField> and <ndbRecValue> for "ndbRec"
    Then the query response returns an error
    Examples:
      | reqField    | reqValue    | ndbRecValue |
      | "ndbSpecCD" | "22"        | "O"         |
      | "ndbOrg" | "22"     | "P"      |

