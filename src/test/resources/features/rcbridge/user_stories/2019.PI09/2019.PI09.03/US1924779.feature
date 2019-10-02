# Last updated on 
@US1924779
@2019.PI09
@2019.PI09.03
@releasePresent
@iterationFuture
Feature: US1924779 - CMD and OCM Alignment - IPA numbers (NetworkGroups - Groups / Individuals and PCP / SPEC)

  @TC954881
  @Manual
  @Functional
  Scenario Outline: TC954881 - [RL0]
    Given a valid Exari contract event exists
    And UHG_Paper_Type is "<paperType>"
    And OCM/CSI Exceptions == "FALSE"
    And contract_NetworkRoleType == "<contractNetworkRoleType>"
    When ipa value for ndbcontractmaster search parameter is needed
    Then values from Column "<columnName>" in the PRODUCT DESCRIPTION GROUP table will be used
    Examples:
      | paperType | contractNetworkRoleType | columnName |
      | MGA       | P                       | R          |
      | SMGA      | P                       | R          |
      | SPGA      | P                       | R          |
      | PHO       | P                       | R          |
      | MGA       | S                       | T          |
      | SMGA      | S                       | T          |
      | SPGA      | S                       | T          |
      | PHO       | S                       | T          |
      | SPA       | P                       | S          |
      | PAT       | P                       | S          |
      | IPA       | P                       | S          |
      | SPA       | S                       | U          |
      | PAT       | S                       | U          |
      | IPA       | S                       | U          |

  @RC_unlinked
  @TC972778
  @Manual
  @Functional
  Scenario: TC972778 - [RL1]
    Given a valid Exari contract event exists
    And UHG_Paper_Type == | MGA | SMGA | SPGA | PHO |
    And OCM/CSI Exceptions == FALSE
    And contract_NetworkRoleType == 'S'
    When "ipa" value for ndbcontractmaster search parameter is needed
    Then values from Column T in the PRODUCT DESCRIPTION GROUP table will be used

  @TC972779
  @Manual
  @Functional
  Scenario: TC972779 - [RL2]
    Given a valid Exari contract event exists
    And UHG_Paper_Type == | SPA | PAT | IPA |
    And OCM/CSI Exceptions == FALSE
    And contract_NetworkRoleType == 'P'
    When "ipa" value for ndbcontractmaster search parameter is needed
    Then values from Column S in the PRODUCT DESCRIPTION GROUP table will be used

  @RC_unlinked
  @TC972780
  @Manual
  @Functional
  Scenario: TC972780 - [RL3]
    Given a valid Exari contract event exists
    And UHG_Paper_Type == | SPA | PAT | IPA |
    And OCM/CSI Exceptions == FALSE
    And contract_NetworkRoleType == 'S'
    When "ipa" value for ndbcontractmaster search parameter is needed
    Then values from Column U in the PRODUCT DESCRIPTION GROUP table will be used

