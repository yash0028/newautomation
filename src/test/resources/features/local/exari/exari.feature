@ExariUITest
@A_UI_Story
@Automated
Feature: Exari UI Test

  @author
  Scenario Outline: Author <type> on <site> page
    Given I am logged into Exari Dev as a valid user
    And I am on the "<site>" site
    When I author a "<type>" contract in Exari
    And the "<type>" contract has an MPIN of "1000470", a market number of "3413", and an effective date of "October 4, 2018"
    Then I have an active "<type>" contract in Exari

    Examples:
      | site | type |
      | Test | SMGA |
#      | northeast uhn | SMGA |
#      | central uhn   | SMGA |


  @amend
  Scenario Outline: Amend <type> on <site> page
    Given I am logged into Exari Dev as a valid user
    And I am on the "<site>" site
    When I select the most recent "<type>" "active" contract in Exari
    And I amend that "<type>" contract in Exari
    Then I have an active "<type>" contract in Exari

    Examples:
      | site | type |
      | Test | SMGA |
#      | northeast uhn | SMGA |
#      | central uhn   | SMGA |

  @terminate
  Scenario Outline: Terminate <type> on <site> page
    Given I am logged into Exari Dev as a valid user
    And I am on the "<site>" site
    When I select the most recent "<type>" "active" contract in Exari
    And I terminate that "<type>" contract in Exari
    Then I have an active "<type>" contract in Exari

    Examples:
      | site | type |
      | Test | SMGA |
#      | northeast uhn | SMGA |
#      | central uhn   | SMGA |

  @ignore @author @amend @terminate @contractLifecycle
  Scenario Outline: Author amend and terminate a <type> on <site> page
    Given I am logged into Exari Dev as a valid user
    And I am on the "<site>" site
    When I author a "<type>" contract in Exari
    And the "<type>" contract has an MPIN of "1000470", a market number of "3413", and an effective date of "October 4, 2018"
    And I amend that "<type>" contract in Exari
    When I terminate that "<type>" contract in Exari
    Then I have an active "<type>" contract in Exari

    Examples:
      | site | type |
      | Test | SMGA |
#      | northeast uhn | SMGA |
#      | central uhn   | SMGA |

