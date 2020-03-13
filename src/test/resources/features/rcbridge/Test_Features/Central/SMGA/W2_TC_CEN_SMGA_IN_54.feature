# Last updated on
@SMGABusinessTestcases_IN
@releaseUnknown
@iterationUnknown
Feature: W2_TC_CEN_SMGA_IN_54

  @W2_TC_CEN_SMGA_IN_54
  @Manual
  @User_Interface
  @W2_CEN_SMGA
  @UAT_AUTO
  @UAT_AUTO_INITIAL_TRANSACTION
  @SMGA_INITIAL
  Scenario Outline: W2_TC_CEN_SMGA_IN_54 - [RL0] Author SMGA contract in <site>
    Given I am logged into Exari Dev as a valid user and go to the "<site>" site
  
    #Draft
    And I am using the "<TCName>" data from "<paperType>_CEN.csv" of "<site>" and paper type "<paperType>"
    And I enter PES Inputs
    And I enter PES Response
    And I select Market Number
    And I enter Request For Participation Response
    And I enter Document Selection
    And I preview Provider Details
    And I enter Practice Locations for SMGA Contract
    And I preview Provider Details
    And I enter Market Exception Grid
    And I enter Market Exception Grid
    And I enter Contract Details
    And I enter HBPs Red Door
    And I select Provider Signatory
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
    And I Approve Payment Appendix
    And I Set Status as Final Pending QA
    And I complete final capture by add provider using TIN

    #Activate
    And I Set Status as Active
    And I capture Contract Number

    #CMD Check
    And I Verify CMD and Capture Status

    Examples:
      | site          | paperType     | TCName              |
      | central uhn   | SMGA          | W2_TC_CEN_SMGA_IN_54|
      
      
  @W2_TC_CEN_SMGA_IN_54
  @Manual
  @User_Interface
  @UAT_AUTO_AMENDMENT
  @SMGA_AMANDMENT
  @SMGA_RERUN
  Scenario Outline: W2_TC_CEN_SMGA_IN_54 - [RL0] Author SMGA contract in <site>
    Given I am logged into Exari Dev as a valid user and launch contract using "<TCName>"
  
    #Draft
    And I am using the "<TCName>" data from "<paperType>_CEN.csv" of "<site>" and paper type "<paperType>"
        
   	#Add MedicareAmandment
    And I select the contract
    And I click on Create Amendment
    And I enter title
    And I enter Amendment Selection
    And I select Amendments needed in Amendment Selection
    And I select Amendment Type in Provider Details
    And I select Types of Amendments
    And I select Contract Applied in Amendments
    And I enter Contract Details in Amendments
    And I enter Appendix 2 in Amendments
    And I select applied Payment Appendix
#    And I enter Payment Appendix in Amendments for SMGA contracts
#    And I check Payment Appendix
    And I select Payment Appendix for SMGA contracts
    And I choose Additional Manuals
    And I enter Steerage
    And I enter Payment Appendix in Amendments for SMGA contracts
    And I check Payment Appendix
    And I enter Group Summary
    And I Complete Wizard

	#Amandment final capture
    And I Start Workflow
    And I Start Process for Initial Transaction
    And I Approve Payment Appendix in Amendment
    And I Set Status as Final Pending QA in Amendment
    And I Start Final Capture
    And I enter Provider Signatory in Amendment
    And I enter Our Signatory in Amendment
    And I enter Appendix 2 in Amendments FinalCapture
    And I enter Payment Appendix in Amendments FinalCapture
    And I select Provider Roster as None
    And I enter Group Summary
    And I Complete Wizard
    And I Set Status as Active in Amendment

    #Amendment CMD checking
    And I Verify CMD and Capture Status

    Examples:
      | site          | paperType     | TCName              |
      | central uhn   | SMGA          | W2_TC_CEN_SMGA_IN_54|
    