# Last updated on 
@RFP
@US1035921
@2018.PI02
Feature: US1035921 - [Continued] Error - Org type or Specialty is not found in RFP

  @TC493885
  @Automated
  @Acceptance
  Scenario: TC493885::0 - Testing bad org type
    Given the provider's Specialty "abc123" is passed to the RFP service
    When finding the Specialty in RFP
    Then the RFP service will return a "False" value

  @TC493885
  @Automated
  @Acceptance
  Scenario: TC493885::1 - Testing bad org type
    Given the provider's Org Type "abc123" is passed to the RFP service
    When finding the Org Type in RFP
    Then the RFP service will return a "False" value

  @TC493884
  @Automated
  @Acceptance
  Scenario: TC493884 - Testing bad specialty code
    Given the provider's Specialty "abc123" is passed to the RFP service
    When finding the Specialty in RFP
    Then the RFP service will return a "False" value

