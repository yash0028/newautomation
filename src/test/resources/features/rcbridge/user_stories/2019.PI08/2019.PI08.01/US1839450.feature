# Last updated on 
@Arvind
@Adele_R
@US1839450
@2019.PI08
@2019.PI08.01
@releasePresent
@iterationPresent
Feature: US1839450 - 60 & 64 Manual & Systematic loading confirmation - Rate Escalator

  @TC843994
  @Manual
  @Functional
  @Arvind
  @Adele_R
  Scenario: TC843994 - [RL0]
    Given a hopper exists for a fee schedule
    When a contract owner completes Submit for loading task
    Then a task "Confirm manual loading completed" is created
    And the text displayed in the form is "Please complete this task after you have confirmation that the agreement has been successfully loaded in our systems."
    And the task is assigned to the contract owner

  @TC865312
  @Manual
  @Functional
  @Arvind
  @Adele_R
  Scenario: TC865312 - [RL1]
    Given a hopper exists for a fee schedule
    When a contract owner completes Submit for loading task
    Then a task "Loading: Confirm Systematically completed" is created
    And the text displayed in the form is "Please complete this task after you have confirmation that the agreement has been systematically and successfully loaded in our systems."
    And the task is assigned to the contract owner

