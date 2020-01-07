@SPGABusinessTestcases_IN
@releaseUnknown
@iterationUnknown
Feature: SPGA Business Testcases_IN

  @TC_Demo_1
  @Manual
  @User_Interface
  @Draft_Demo_1
  Scenario Outline: TC_Demo_1 - [RL0] Author SPGA contract in <site>
    Given I am logged into Exari Dev as a valid user and go to the "<site>" site
    #Draft
    And I am using the "<TCName>" data from "Test.csv" of "<site>" and paper type "<paperType>"
    And I enter PES Inputs
    And I enter PES Response
    And I select Market Number
    And I enter Request For Participation Response
    And I enter Document Selection
    And I preview Provider Details
    And I enter Practice Locations for SPGA Contract
    And I preview Provider Details
    And I enter Market Exception Grid
    And I enter Market Exception Grid
    And I enter Contract Details
    And I enter HBPs Red Door
    And I enter Market Strategy Grid
    And I enter Appendix 2
    And I enter Payment Appendix
    And I enter Additional Locations
    And I enter Regulatory Appendices
    And I select Provider Roster as None
    And I enter Amendments
    And I enter Group Summary
    Then I Complete Wizard
    #Final capture
    And I Start Workflow
    And I Start Process for Initial Transaction
    And I Set Status as Final Pending QA
    And I Start Final Capture
    And I enter Contract Details in Final Capture
    And I enter Provider Signatory
    And I enter Our Signatory
    And I enter Market Exception Grid in Final Capture
    And I enter Market Exception Grid
    And I add provider using TIN
    And I select Providers
    And I verify Providers
    And I acknowledge the warning
    And I enter Group Summary
    Then I Complete Wizard
    #Activate
    And I Set Status as Active
    And I capture Contract Number


    Examples:
      | site          | paperType     | TCName|
      | central uhn   | SPGA          | TC_Demo_1|


  @TC_Demo_1
  @Manual
  @User_Interface
  @Amendment_Demo_1
  Scenario Outline: TC_Demo_1 - [RL0] Author SPGA contract in <site>

    Given I am logged into Exari Dev as a valid user and launch contract using "<TCName>"
    And I am using the "<TCName>" data from "Test.csv" of "<site>" and paper type "<paperType>"
    #Draft Amandament
#    And I search Contract using Contract Number
    And I select the contract
    And I click on Create Amendment
    And I enter title
    And I enter Amendment Selection
    And I select Amendments needed in Amendment Selection
    And I select Amendment Type in Provider Details
    And I preview Provider Details
    And I select Types of Amendments
    And I select Contract Applied in Amendments
    And I enter Contract Details in Amendments
    And I enter Effective date in Contract Details
    And I enter Appendix 2 in Amendments
    And I select applied Payment Appendix
#    And I enter Payment Appendix in Amendments for SPGA contracts
    And I check Payment Appendix
    And I enter Payment Appendix Amendments in Spga Contracts
    And I choose Additional Manuals
    And I enter Steerage
    And I enter Payment Appendix in Amendments for SPGA contracts
    And I check Payment Appendix
    And I enter Group Summary
    And I Complete Wizard

    #Amandment final capture
    And I Start Workflow
    And I Start Process for Initial Transaction
    And I Set Status as Final Pending QA in Amendment
    And I Start Final Capture
    And I enter Provider Signatory in Amendment
    And I enter Our Signatory in Amendment
    And I enter Appendix 2 in Amendments FinalCapture
    And I enter Payment Appendix in Amendments FinalCapture
    And I select Provider Roster as None
    And I enter Group Summary
    And I Complete Wizard

    #Activating Amendments
    And I Set Status as Active


    Examples:
      | site          | paperType     | TCName|
      | central uhn   | SPGA          | TC_Demo_1|
