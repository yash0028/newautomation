# Last updated on 
@Special_QE_Work
@US1652443
@2019.PI06
@2019.PI06.05
@releasePresent
@iterationPresent
Feature: US1652443 - Install Contract - Y-line contract masters (Medicare/VACCN)

  @TC759648
  @Manual
  @Functional
  @Special_QE_Work
  Scenario: TC759648 - [RL0]
    Given a valid Exari contract exists
    When the contract installation transaction is processed thru CMD/OCM
    And the contract includes product networks that are identied based on Y-format contract master structure, i.e. no fee schedule id used in contract master search
    Then the contract master search does not require nor include fee schedule
    And the contract master search response does not require nor error due to lack of fee schedule

  @TC759651
  @Manual
  @Functional
  @Special_QE_Work
  Scenario: TC759651 - [RL1]
    Given a valid Exari contract exists
    When the contract transaction is processed thru CMD/OCM
    And the contract includes product networks that do not require Y-formatted contract masters, e.g. no fee schedule id used in contract master search
    Then the contract master search includes fee schedule

  @TC759652
  @Manual
  @Functional
  @Special_QE_Work
  Scenario: TC759652 - [RL2]
    Given a valid Exari contract exists
    When the ExarI Contract UHC market products are made available in the Exari UCM
    Then the Market Product includes a means to identify the Market Product identifies a non-integrated claim platform or network report id (y-line) or product (H line)
    And the contract installation transaction is processed thru CMD/OCM

