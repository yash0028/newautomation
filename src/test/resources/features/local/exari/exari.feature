@ExariUITest
@A_UI_Story
@Automated
Feature: Exari UI Test


  Scenario Outline: Author contract on Central
    Given I am logged into Exari Dev as a valid user and go to the "central uhn" site
    When I author a contract using the following contract information
      | MPIN               | <mpin>          |
      | Market Number      | <market number> |
      | Paper Type         | <paper type>    |
      | HBP                | no              |
      | Phycon             | 1234            |
      | Additional Manuals | no              |
    Then I have an active contract in Exari

    Examples:
      | mpin    | market number | paper type |
      | 1000470 | 35551         | SPA        |

    # MPIN: 1000470
    # Market Number: 35551
    # Paper Type: SPA

  # Arbitration county?


