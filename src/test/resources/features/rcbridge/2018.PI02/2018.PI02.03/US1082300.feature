# Last updated on 
@CLM_UAT
@RFP
@US1082300
@2018.PI02
@2018.PI02.03
@MVP
@PI02_Top3
@Plus
@10/1_Physician
@CLM_Exari
@Exari_Microservice
@F164312
@releasePast
@iterationPast
Feature: US1082300 - Create microservice to obtain RFP data

  @TC565532
  @Automated
  @Functional
  @CLM_UAT
  @RFP
  @US1082300
  @2018.PI02
  @2018.PI02.03
  Scenario: TC565532 - [RL0] Happy Path Validation
    Given a request with the following fields:
      | Place of Service |
      | Specialty Type |
    When the request is made to the RFP service
    Then the following fields should be returned:
      | Credentialing Required |
      | Super Script |
      | Credentialing Entity |
      | Accepting Applications (E&I) |
      | Accepting Applications (C&S) |
      | Accepting Applications (M&V) |
    #Notes:
    #
    #- Specialty is for physicians and Org Type is for facilities, but there may be cases where a provider has both.
    #- Logically, the accepting new applications apply to the county level but the table can only be queried by state.
    #- How often is the super script updated?
    #- the accepting new applications fields do not always return simple booleans.

