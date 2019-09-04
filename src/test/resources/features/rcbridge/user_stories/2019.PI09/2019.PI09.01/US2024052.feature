# Last updated on 
@Arvind
@Adele_R
@US2024052
@2019.PI09
@2019.PI09.01
@releaseFuture
@iterationFuture
Feature: US2024052 - UHC and Provider agreement- Language change

  @TC962604
  @Manual
  @Functional
  @Arvind
  @Adele_R
  Scenario: TC962604 - [RL0]
    Given language change is requested by provider
    When the contractor is on the "Language Change: UHC & Provider Agree" task
    Then the contractor can document the language change request from the provider
    And the form contains "Are changes to locked language needed?"* with radio button with option Yes/No

  @TC962606
  @Manual
  @Functional
  @Arvind
  @Adele_R
  Scenario: TC962606 - [RL1]
    Given "Are changes to locked language needed?"* exists
    When yes, is selected
    Then the form contains "Which section(s) require a change?* " with checkbox options
    And the option are: Timely filing, Article 6.10, Medical Necessity, Article 7.4 non-routine fee schedule changes, Dispute Resolution, Appendix 2, Regulatory Appendix
    And each checked section needs "Is there explicit language requested by the provider?"* Yes/No radio button,
    And If yes, "Please provide the explicit language" as a Multi line text box
    And each checked section needs "What issues does the provider have with our language?"* as a Multi line Text box
    And upon completion of the task, "XXXXXXXXXX" is assigned

