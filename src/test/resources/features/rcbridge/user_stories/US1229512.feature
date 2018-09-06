# Last updated on 
@MVP
@US1229512
@2018.PI03
Feature: US1229512 - Med Nec clause table update NDB service - Facility

  @TC565984
  @Automated
  @Functional
  Scenario: TC565984 - [RL0]
    Given the med nec clause language listed in the table
    When a clause code value is created or updated
    Then the clause code information update is shared with NDB

