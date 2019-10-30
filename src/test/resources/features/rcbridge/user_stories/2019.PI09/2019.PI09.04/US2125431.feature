# Last updated on 
@Arvind
@US2125431
@2019.PI09
@2019.PI09.04
@releasePresent
@iterationPresent
Feature: US2125431 - Locked Language Emails

  @TC1025761
  @Manual
  @Functional
  @Arvind
  Scenario: TC1025761 - [RL0]
    Given a locked language task is completed by initiator
    When a task is assigned to Market lead or pricing lead or UHN legal or operations
    Then a mail needs to be sent to the user as per the excel attached.

  @TC1025768
  @Manual
  @Functional
  @Arvind
  Scenario: TC1025768 - [RL1]
    Given a locked language task is completed by initiator
    When a task is assigned to Market lead or pricing lead or UHN legal or operations
    Then a reminder mail needs to be sent to the user as per the excel attached until user completes the task.
    And the reminder mails needs to be sent everyday after the task is assigned to the user.

  @TC1025771
  @Manual
  @Functional
  @Arvind
  Scenario: TC1025771 - [RL2]
    Given a locked language task is denied by Market lead or pricing lead or UHN legal or operations
    When a task is assigned to initiator
    Then a mail needs to be sent to the user as per the excel attached.

