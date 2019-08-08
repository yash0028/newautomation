# Last updated on 
@Arvind
@Adele_R
@US1851751
@2019.PI08
@2019.PI08.03
@releasePresent
@iterationPast
Feature: US1851751 - 29  Provider has agreed to rates - Rate Escalator

  @TC848054
  @Manual
  @Functional
  @Arvind
  @Adele_R
  Scenario: TC848054 - [RL0]
    Given when a variable escalator request exists
    When the HCE Modeling: Modeling Received is completed
    Then contractor will be assigned a task "Provider has agreed to rates"
    And the text displayed in the form of the task is "Please complete this task after you have presented the provider with the updated rates."
    And there are two customized outcome buttons "Provider has agreed to the rates" and "HCE Modeling must be completed again"
    And when "Provider has agreed to the rates" is chosen the "Fee Schedule" Submit Material Change" task is created
    And when ""HCE Modeling must be completed again" is chosen the "HCE Modeling: Request Submitted" task is created

