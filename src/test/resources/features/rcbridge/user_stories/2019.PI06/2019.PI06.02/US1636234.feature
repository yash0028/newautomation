# Last updated on 
@US1636234
@2019.PI06
@2019.PI06.02
@releasePresent
@iterationPast
Feature: US1636234 - [Unfinished] Market Lead Due Date Reminder Email

  @TC746056
  @Manual
  @Functional
  Scenario: TC746056 - [RL0]
    Given I am the assigned Market Lead
    When 2 business days have passed on a retro approval request pending my decision
    Then an email reminder email is sent to me everyday until I make a decision
    And the email has the subject "Retro -case ID- -Provider Name- decision"
    And the email has the body
    """
    -Case ID link- for -Provider name- is pending review in your queue since -Date assigned to market lead queue in MM.DD.YY format-.
    Please review and make a decision using the provided link.
    """

