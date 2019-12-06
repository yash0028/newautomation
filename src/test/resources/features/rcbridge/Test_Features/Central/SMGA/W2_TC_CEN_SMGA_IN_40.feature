# Last updated on
@SMGABusinessTestcases_IN
@releaseUnknown
@iterationUnknown
Feature: SMGA Business Testcases_IN

  @W2_TC_CEN_SMGA_IN_40
  @Manual
  @User_Interface
  @W2_CEN_SMGA
  @UAT_AUTO
  @UAT_AUTO_INITIAL_TRANSACTION
  Scenario Outline: W2_TC_CEN_SMGA_IN_40 - [RL0] Author SMGA contract in <site>
    Given I am logged into Exari Dev as a valid user and go to the "<site>" site

     #Draft
    And I am using the "<TCName>" data from "<paperType>_CEN_IN.csv" of "<site>" and paper type "<paperType>"
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
    And I enter retro code in Provider Roster
    And I acknowledge the warning
    And I enter Group Summary
    Then I Complete Wizard

     #Activate
    And I Set Status as Active
    And I capture Contract Number

     #CMD Check
     #When I have entered the CMD dashboard URL
     #When I search for Contract
     #Then Validate Contract "11122328" status and request type "InstallContract"

    Examples:
      | site          | paperType     | TCName|
      | central uhn   | SMGA          | W2_TC_CEN_SMGA_IN_40|
      
      
      
  @W2_TC_CEN_SMGA_IN_40
  @Manual
  @User_Interface
  @UAT_AUTO_AMANDAMENT
  Scenario Outline: W2_TC_CEN_SMGA_IN_40 - [RL0] Author SMGA contract in <site>
    Given I am logged into Exari Dev as a valid user and go to the "<site>" site

     #Draft
    And I am using the "<TCName>" data from "<paperType>_CEN_IN.csv" of "<site>" and paper type "<paperType>"
    #Amandments Add ER Wrap and Remove Navigate
    And I select the contract
    And I click on Create Amendment
    And I enter title
    And I enter Amendment Selection
    And I select Amendments needed in Amendment Selection
    And I select Amendment Type in Provider Details
    And I enter OurSignatory
    And I select Unilateral Contract in Amendments
    And I select Provider Type Radio Button in Amendments
    And I enter Opt-out in Amendments
    And I enter Opt-out Address in Amendments in IL
    And I enter Contract Details in Amendments
    And I enter Effective date in Contract Details
    And I enter Appendix 2 in Amendments
    And I select applied Payment Appendix
    And I enter Group Summary
    And I Complete Wizard

    #Amandment final capture
    And I Start Workflow
    And I Start Process for Initial Transaction
    And I Set Status as Final Pending QA in Amendment
    And I Start Final Capture
    And I enter Appendix 2 in Amendments FinalCapture
    And I select Provider Roster as None
    And I check Payment Appendix
    And I enter Opt-out in Amendments
#   And I enter Opt-out Address in Amendments in IL
    And I enter Group Summary
    And I Complete Wizard


    Examples:
      | site          | paperType     | TCName|
      | central uhn   | SMGA          | W2_TC_CEN_SMGA_IN_40|