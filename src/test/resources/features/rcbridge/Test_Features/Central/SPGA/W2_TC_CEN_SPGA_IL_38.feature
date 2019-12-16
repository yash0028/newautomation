# Last updated on
@SPGABusinessTestcases_IN
@releaseUnknown
@iterationUnknown
Feature: SPGA Business Testcases_IN

  @W2_TC_CEN_SPGA_IL_38
  @Manual
  @User_Interface
  @UAT_AUTO
  @UAT_AUTO_INITIAL_TRANSACTION
  @UAT_AUTO_CENTRAL
  @W2_CEN_SPGA
  Scenario Outline: W2_TC_CEN_SPGA_IL_38 - [RL0] Author SPGA contract in <site>
    Given I am logged into Exari Dev as a valid user and go to the "<site>" site

    #Draft
    And I am using the "<TCName>" data from "<paperType>_CEN_IN.csv" of "<site>" and paper type "<paperType>"
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
    And I enter Appendix 1
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
	
    #CMD Check
    #NDB Check
    #Cosmos check

    Examples:
      | site          | paperType     | TCName|
      | central uhn   | SPGA          | W2_TC_CEN_SPGA_IL_38|

  @W2_TC_CEN_SPGA_IL_38
  @Manual
  @User_Interface
  @UAT_AUTO_AMANDAMENT
  @CEN_IN_AMANDMENT
  @SPGA_AMENDMENT
  Scenario Outline: W2_TC_CEN_SPGA_IL_38 - [RL0] Author SPGA contract in <site>
    Given I am logged into Exari Dev as a valid user and launch contract using "<TCName>"
    And I am using the "<TCName>" data from "<paperType>_CEN_IN.csv" of "<site>" and paper type "<paperType>"

   #Add ER Wrap and Remove Core
    And I select the contract
    And I click on Create Amendment
    And I enter title
    And I enter Amendment Selection
#      And I select Amendments needed in Amendment Selection
    And I select Amendment Type in Provider Details
#    And I preview Provider Details
    And I enter Our Signatory in Amendment
    And I select Types of Amendments
    And I select Provider Type Radio Button in Amendments
    And I enter Opt-out in Amendments
    And I enter Opt-out Address in Amendments in IL
    And I enter Contract Details in Amendments
    And I enter Effective date in Contract Details
    And I enter Appendix 2 in Amendments
    And I select applied Payment Appendix
    And I enter Payment Appendix in Amendments for SPA contracts
    And I check Payment Appendix
    And I enter Group Summary
    And I Complete Wizard

     #Amandment final capture
    And I Start Workflow
    And I Start Process for Initial Transaction
    And I Set Status as Final Pending QA in Amendment
    And I Start Final Capture
    And I enter Appendix 2 in Amendments
    And I enter Appendix 2 in Amendments FinalCapture
    And I enter Payment Appendix in Amendments FinalCapture
    And I select Provider Roster as None
    And I enter Group Summary
    And I Complete Wizard

    #Activating Amendments
    And I Set Status as Active

    #Create supporting document

    #CMD Check
    #NDB Check


    Examples:
      | site          | paperType     | TCName|
      | central uhn   | SPGA          | W2_TC_CEN_SPGA_IL_38|