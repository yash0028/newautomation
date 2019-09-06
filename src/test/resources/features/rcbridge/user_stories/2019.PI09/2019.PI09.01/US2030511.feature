# Last updated on 
@Arvind
@Adele_R
@US2030511
@2019.PI09
@2019.PI09.01
@releasePresent
@iterationPresent
Feature: US2030511 - Locked Language Request – UHN Legal contract offer - Unlock Template - Template unlocked

  @TC968850
  @Manual
  @Functional
  @Arvind
  @Adele_R
  Scenario: TC968850 - [RL0]
    Given a locked language change process exists
    When contractor submits "Locked Language Counter"
    Then a task "Locked Language Request – UHN Legal contract offer" is assigned to UHN Legal team
    And the text displayed in the form is "Please complete this task after we can legally offer this contact to the provider."

  @TC968860
  @Manual
  @Functional
  @Arvind
  @Adele_R
  Scenario: TC968860 - [RL1]
    Given a locked language change process exists
    When UHN Legal team member submits "Locked Language Request – UHN Legal contract offer"
    Then a task "Locked Language: Unlock template" is assigned to Template team
    And a notification mail is sent to the contractor
    And the text displayed in the form is "Please unlock the template as UHN legal team has approved the language change."

