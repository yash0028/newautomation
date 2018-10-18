# Last updated on 
@MVP
@US1229512
@CMD2
@Priority_2
@F232444
@releaseUnknown
@iterationUnknown
Feature: US1229512 - Med Nec clause table update NDB service - Facility

  @TC565984
  @Automated
  @Functional
  @MVP
  @US1229512
  Scenario: TC565984 - [RL0]
    Given the med nec clause language listed in the table
    When a clause code value is created or updated
    Then the clause code information update is shared with NDB

