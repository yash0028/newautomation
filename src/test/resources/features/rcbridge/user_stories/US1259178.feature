# Last updated on 
@Mark
@US1259178
@2018.PI03
Feature: US1259178 - Taxonomy Grid table microservice

  @TC543877
  @Automated
  @Functional
  Scenario: TC543877 - Rec Type with Specialty Code Validation
    Given a user needs to query the table
    When the user provides a value of P for Rec Type
    Then the user must provide NDB Spec Cd
    And Degree Code is optional

  @TC543876
  @Automated
  @Functional
  Scenario: TC543876 - Version Attributes Validation
    Given a user needs to query the table
    When the user provides NDB SpecCd or NDB OrgTypeCd and Prov Rec Type values
    Then the query response provides the most recent record version attributes data

  @TC543878
  @Automated
  @Functional
  Scenario: TC543878 - Rec Type with Org Type Validation
    Given a user needs to query the table
    When the user provides a value of O for Rec Type
    Then the user must provide NDB Org Type Cd
    And SpecCd is optional

