# Last updated on 
@UCM
@Facility
@Templates
@Adele_R
@US1823723
@2019.PI09
@releasePresent
@iterationUnknown
Feature: US1823723 - PBC measurement period

  @TC960851
  @Manual
  @Functional
  @UCM
  @Facility
  @Templates
  @Adele_R
  Scenario: TC960851 - [RL0]
    Given a contract already exists
    When contractor needs to send the interim reports to the provider for their review
    Then the exact measurement period for the contract is available in UCM
    And compliance manager starts the Interim report process flow based on the date present in the UCM

