# Last updated on 
@Sachin
@Sheham
@US1544580
@2019.PI06
@2019.PI06.03
@releaseUnknown
@iterationUnknown
Feature: US1544580 - [Continued] Market Lead Due Date Reminder Email

  @TC716979
  @Manual
  @Functional
  @Sachin
  @Sheham
  Scenario: TC716979 - [RL0]
    Given I am the assigned Market Lead
    When 2 business days have passed on a retro approval request pending my decision
    Then an email reminder email is sent to me everyday until I make a decision
    And the email has the subject "Retro -Task ID- -Provider Name- decision"
    And the email has the body
    """
    -Task ID link- for -Provider name- is pending review in your queue since -Date assigned to market lead queue in MM.DD.YY format-.
    Please review and make a decision using the provided link.
    """

