# Last updated on 
@Sheham
@US1562019
@2019.PI06
@2019.PI06.03
@releasePast
@iterationPast
Feature: US1562019 - Email Market Lead that Approval Request Task Was Routed To Them

  @TC743385
  @Manual
  @Functional
  @Sheham
  Scenario: TC743385 - [RL0]
    Given a retro request was completed by an initiator
    When the task is routed to Market lead for review
    Then an email is sent to the Market Lead informing them of the new task
    And the email has the subject "Retro decision for -Task ID-, -Provider name-"
    And the email has the body:
    """
    -Task ID link- for -Provider Name- was assigned to your queue in Exari by -Initiator Name- for your review.
    Please review make a decision using the provided link.
    """

