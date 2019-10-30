# Last updated on 
@Arvind
@Adele_R
@US2015969
@2019.PI09
@releasePresent
@iterationUnknown
Feature: US2015969 - Manual Rate Escalator with multiple effective date

  @TC1004337
  @Manual
  @Functional
  @Arvind
  @Adele_R
  Scenario: TC1004337 - [RL0]
    Given a rate escalator was not started systematically
    When the contractor identifies the event
    Then they are able to manually start the rate escalator workflow
    And on the "Review Rate Escalator Details" task the contractor must manually input the Escalator Details
    And multiple entries can be be input

  @TC997018
  @Manual
  @Functional
  @Arvind
  @Adele_R
  Scenario: TC997018 - [RL1]
    Given a future rate escalator was input on the "Review Rate Escalator Details" task
    When it is 3 month prior to the effective date
    Then the Rate Escalator process is systematically started
    And it is assigned to the owner of the deal #

