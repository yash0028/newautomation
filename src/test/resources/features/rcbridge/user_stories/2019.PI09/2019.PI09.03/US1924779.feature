# Last updated on 
@US1924779
@2019.PI09
@2019.PI09.03
@releasePresent
@iterationPresent
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

