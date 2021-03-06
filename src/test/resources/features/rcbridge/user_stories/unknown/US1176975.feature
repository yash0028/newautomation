# Last updated on 
@RCBridge
@US1176975
@releaseUnknown
@iterationUnknown
Feature: US1176975 - RC Suite Enhancement

  @TC749599
  @Manual
  @Acceptance
  @RCBridge
  Scenario Outline: TC749599 - (Copy of) Update Filtering Logic to show providers linked to PTI Eligible Organizations -org type should be displayed
    Given MPP user is submitted login form using below fields
      | OptumIDoremailaddress | PDRrosterVS |
      | Password              | ENCRYPTED   |
    And user navigates to Welcome page with given title "My Practice Profile"
    When user submits Welcome form using below fields
      | ENTERMPIN     | <ENTERMPIN>     |
      | SELECTTAXID   | <SELECTTAXID>   |
      | ORG_TYPE_CODE | <ORG_TYPE_CODE> |
    And user must be able to redirect to demographics page "provider-demographics"
    And user should be able to validate provider demographics information
      | LASTNAME             | <LASTNAME>             |
      | FIRSTNAME            | <FIRSTNAME>            |
      | MIDDLENAME           | <MIDDLENAME>           |
      | SUFFIX               | <SUFFIX>               |
      | GENDER               | <GENDER>               |
      | PROVIDERNPI          | <PROVIDERNPI>          |
      | SPECALITIES          | <SPECALITIES>          |
      | ACCEPTINGNEWPATIENTS | <ACCEPTINGNEWPATIENTS> |
      | GROUPNAME            | <GROUPNAME>            |
      | CONTRACTEDADDRCODE   | <CONTRACTEDADDRCODE>   |
    And user should be able to validate provider locations
      | LASTNAME       | <LASTNAME>       |
      | FIRSTNAME      | <FIRSTNAME>      |
      | MIDDLENAME     | <MIDDLENAME>     |
      | ADDRESSTYPE    | <ADDRESSTYPE>    |
      | STREETADDRESS  | <STREETADDRESS>  |
      | CITY           | <CITY>           |
      | STATE          | <STATE>          |
      | ZIPCODE        | <ZIPCODE>        |
      | CORRESPONDENCE | <CORRESPONDENCE> |
      | PRIMARYPHONE   | <PRIMARYPHONE>   |
      | FAX            | <FAX>            |
    Then user must be able to Logout from application
    Examples:
      | ENTERMPIN | SELECTTAXID | ORG_TYPE_CODE | LASTNAME   | FIRSTNAME | MIDDLENAME | SUFFIX | GENDER | PROVIDERNPI | SPECALITIES                       | ACCEPTINGNEWPATIENTS | GROUPNAME                        | ADDRESSTYPE              | STREETADDRESS                 | CITY        | STATE | ZIPCODE | CORRESPONDENCE    | PRIMARYPHONE   | FAX            | CONTRACTEDADDRCODE |
      | 000001000 | 954279185   | 033           | BORUT      | THOMAS    | C          |        | MALE   | 1528104064  | PEDIATRICS,ALLERGY AND IMMUNOLOGY |                      | AIRPORT HEALTHCARE MEDICAL GROUP | BILLING                  | PO BOX 90778                  | LOS ANGELES | CA    | 90009   | NO CORRESPONDENCE | (310) 215-1600 |                | UHN                |
      | 001009818 | 631153895   | 027           | DIVALENTIN | LOUIS     | L          |        | MALE   | 1982625869  | INTERNAL MEDICINE                 |                      | AMERICAN DIAGNOSTIC IMAGING IN   | BILLING                  | PO BOX 3253                   | ANNISTON    | AL    | 36203   | NO CORRESPONDENCE | (256) 236-2377 |                | UHN                |
      | 001975282 | 742939873   | 050           | KLINE      | REBECCA   | D          |        | FEMALE |             | CHIROPRACTIC MEDICINE             |                      | RKD ABSOLUTE CHIROPRACTIC        | PLACE OF SERVICE/BILLING | 1411 N VALLEY MILLS DR STE H2 | WACO        | TX    | 76710   | PRIMARY           | (254) 772-7555 | (254) 772-7030 | UHN                |

  @TC557488
  @Manual
  @Functional
  @RCBridge
  Scenario: TC557488 - [RL0] example test
    # Enhance Test Case Link
    Given a user story artifact with 2 valid acceptance criteria
    And that user story does not have test cases
    When rcbridge runs
    Then 2 test cases are created

  @TC569879
  @Manual
  @Functional
  @RCBridge
  Scenario Outline: TC569879 - [RL1]
    Given a user story artifact with 2 valid acceptance criteria
    And that user story has 2 outdated RCLink test cases
    When rcbridge runs with "<data A>" and "<data B>"
    Then the RCLink test cases are updated
    Examples:
      | data A | data AA | data B | data C |
      | aa     | aaa     | bb     | cc     |
      | aa     | aaa     | bc     | cc     |
      | aa     | aaa     | bd     | cc     |
      | ab     | abb     | bb     | cc     |
      | ab     | abb     | bc     | cc     |
      | ab     | abb     | bd     | cc     |

