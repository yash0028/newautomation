# Last updated on 2018-05-10T15:20:21.412Z
@MVP
@Domain_Microservice
Feature: F183260 - Domain MS Optum - Create Provider contract pointer payload for Search and Directory

  @2018.PI02
  Scenario: US1089452
    Given a health coverage product, plan or network product offering specifies NDB UNET for directory search or reporting purposes
    When a provider agreement includes one or more NDB UNET products
    Then a payload is created that contains the necessary information needed by NDB UNET for purposes of directory search or reporting purposes (vs. medical claim administration purposes)

  @2018.PI02
  Scenario: US1089453
    Given a health coverage product, plan or network product offering specifies NDB COSMOS for directory search or reporting purposes
    When a provider agreement includes one or more NDB COSMOS products
    Then a payload is created that contains the necessary information needed by NDB COSMOS for purposes of directory search or reporting purposes (vs. medical claim administration purposes)

