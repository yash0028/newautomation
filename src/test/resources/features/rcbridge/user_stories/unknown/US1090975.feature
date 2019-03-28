# Last updated on 
@US1090975
@releaseUnknown
@iterationUnknown
Feature: US1090975 - Create NDB COSMOS product Facility contract rates payload

  @TC564412
  @Automated
  @Functional
  Scenario: TC564412 - [RL0]
    Given a health coverage product, plan or network product offering specifies COSMOS for medical claim administration
    When a provider agreement includes one or more COSMOS products
    Then a payload is created that contains the necessary information needed by COSMOS for purposes of medical claim administration
    Given a provider agreement includes one or more health coverage products
    When a provider agreement is executed or a healthcare provider is associated to an existing provider agreement
    Then determine the medical claim platform that supports the health coverage product as being COSMOS

