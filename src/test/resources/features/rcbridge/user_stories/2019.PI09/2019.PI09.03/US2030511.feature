# Last updated on 
@Arvind
@Suman
@Go_Live
@Adele_R
@US2030511
@2019.PI09
@2019.PI09.03
@releasePresent
@iterationFuture
Feature: US2030511 - Locked Language Request – UHN Legal contract offer - Unlock Template - Template unlocked

  @TC968850
  @Manual
  @Functional
  @Arvind
  @Suman
  @Go_Live
  @Adele_R
  Scenario: TC968850 - [RL0]
    Given "Will this agreement need to be filed with regulatory bodies? Yes/No*" on the "Locked Language Request – UHN Legal" is answered as Yes
    When the "Locked Language: Unlock template & Insert Language" is completed
    Then the a task "Locked Language Request – UHN Legal filing" is assigned to UHN Legal team
    And the text displayed in the form is "Please complete this task after the agreement has been successfully filed with the regulatory bodies."

  @TC968860
  @Manual
  @Functional
  @Arvind
  @Suman
  @Go_Live
  @Adele_R
  Scenario: TC968860 - [RL1]
    Given a locked language change process exists
    When the a task "Locked Language: Unlock template & Insert Language"" is created
    Then it is assigned to Template team
    And a notification mail is sent to the "UHN Contract Template Team <uhn_contract_template_team@uhc.com>
    And the text displayed in the form is "Please unlock the template and insert the agreed upon language as UHN legal team has approved the language change."
    And the contract ID is shown
    And the language is shown
    And the provider demographics are shown

  @TC970890
  @Manual
  @Functional
  @Arvind
  @Suman
  @Go_Live
  @Adele_R
  Scenario: TC970890 - [RL2]
    Given a Legal Selected Yes for "Will this language need to filed and approved?"
    When the agreement has been signed
    Then the task "Locked Language Request - UHN Legal filing" is created
    And the task is assigned to UHN Legal
    And the contract ID is shown
    And the language is shown
    And the provider demographics are shown

