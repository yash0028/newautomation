# Last updated on
@MVP
@Plus
@CLM_Exari
@Non-Deliverable
@US1186294
@MVP
@Parity
@Non-Deliverable
@7.5_Release
@F185542
@releaseUnknown
@iterationUnknown
Feature: US1186294 - Display project association during database searches

  @TC565595
  @Automated
  @Functional
  @MVP
  @Plus
  @CLM_Exari
  @Non-Deliverable
  @US1186294
  Scenario: TC565595 - [RL0]
    Given I have searched for a provider
    When the provider is a part of a Mass Action Project
    Then the search results will indicate the provider's involvement with the Mass Action Project

