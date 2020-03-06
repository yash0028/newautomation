# Last updated on
@MGABusinessTestcases_AR
@releaseUnknown
@iterationUnknown
Feature: W4_TC_SE_MGA_AL_03

  @W4_TC_SE_MGA_AL_03
  @Manual
  @User_Interface
  @UAT_AUTO
  @UAT_AUTO_INITIAL_TRANSACTION
  @UAT_AUTO_INITIAL_TRANSACTION_W4
  @w4AL
  @w4MGARerun...
  Scenario Outline: <TCName> - [RL0] Author <paperType> contract in <site>
    Given I am logged into Exari Dev as a valid user and go to the "<site>" site

    #Draft
    And I am using the "<TCName>" data from "<paperType>_SE.csv" of "<site>" and paper type "<paperType>"
    And I enter PES Inputs
    And I enter PES Response
    And I select Market Number
    And I enter Request For Participation Response
    And I enter Document Selection
    And I preview Provider Details
    And I enter Practice Locations for MGA Contract
    And I preview Provider Details
    And I enter Market Exception Grid
    And I enter Market Exception Grid
    And I enter Contract Details
    And I enter Article Page
    And I enter Signature Block
    And I enter Additional Locations
    And I enter Market Strategy Grid
    And I enter Appendix 2
    And I choose Additional Manuals
    And I enter FL Medicaid for Alabama
    And I enter Regulatory Appendices
    And I select Provider Roster as None
    And I enter Group Summary
    Then I Complete Wizard
    #Final Capture - Provider Roster (Add one or more providers to the roster)
    And I Start Workflow
    And I Start Process for Initial Transaction
    And I Set Status as Final Pending QA
    And I Start Final Capture
    And I enter Contract Details in Final Capture
    And I enter Provider Signatory
    And I enter Our Signatory
    And I enter Market Exception Grid in Final Capture
    And I enter Market Exception Grid
    And I enter Clause Language
    And I add provider using TIN
    And I select Providers
    And I verify Providers
    And I enter retro code in Provider Roster
    And I acknowledge the warning
    And I enter Group Summary
    Then I Complete Wizard
    And I Set Status as Active
    And I capture Contract Number




    #CMD Checking
    And I Verify CMD and Capture Status




    Examples:
      | site            | paperType     | TCName          |
      | southeast uhn | MGA           | W4_TC_SE_MGA_AL_03|




  @W4_TC_SE_MGA_AL_03
  @Manual
  @User_Interface
  @UAT_AUTO_AMENDMENT
  @AMENDMENT_ALL_MGA
  @UAT_AUTO_AMENDMENT_MGA
  @UAT_AUTO_AMENDMENT_W4
  @Amendw4_mgaAL

  Scenario Outline: <TCName>  - [RL0] Amend <paperType> contract in <site>

    Given I am logged into Exari Dev as a valid user and launch contract using "<TCName>"
    And I am using the "<TCName>" data from "<paperType>_SE.csv" of "<site>" and paper type "<paperType>"

  #Draft Amendment(cancel product)


    And I select the contract
    And I click on Create Amendment
    And I enter title
    And I enter Amendment Selection
    And I select Amendments needed in Amendment Selection
    And I select Amendment Type in Provider Details
    And I enter OurSignatory
    And I select Types of Amendments
    And I select Provider Type Radio Button in Amendments
    And I enter Opt-out in Amendments
    And I enter Opt-out Address in Amendments in IL
    And I enter Contract Details in Amendments
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
#    And I enter Opt-out Address in Amendments in IL
    And I enter Group Summary
    And I Complete Wizard


 #Activating Amendment
    And I Set Status as Active in Amendment
   #Amendment CMD Checking
    And I Verify CMD and Capture Status



    Examples:
      | site          | paperType     | TCName          |
      | southeast uhn | MGA           | W4_TC_SE_MGA_AL_03 |