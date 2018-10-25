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


  Scenario Outline: Author contract on Central
    Given I am logged into Exari Dev as a valid user and go to the "central uhn" site
    When I author a contract using the "Pilot Contract Wrapper" template using the MPIN "<mpin>"
    # Assume choosing First PES Response
    And I enter the following contract information
      | Market Number      | <market number> |
      | Paper Type         | <paper type>    |
      | HBP                | no              |
      | Phycon             | 1234            |
      | Additional Manuals | no              |


    And I enter the Market Number "<market number>" and
    And I select the Paper Type "<paper type>"
    And I select the HBP option of "no"
    And I enter the Phycon Number "<phycon>"
    And I select no additional manuals

    Examples:
    # MPIN: 1000470
    # Market Number: 35551
    # Paper Type: SPA

  # Arbitration county?


