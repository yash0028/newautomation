# Last updated on 2018-05-23T16:48:06.819Z
@MVP
@Plus
Feature: F137934 - Export Entity Data

  Scenario: US861137
    Given I am the Entity Management Solution
    When an external recipient with no User access needs to receive Entity information
    Then I can provide Entity data to the recipients

