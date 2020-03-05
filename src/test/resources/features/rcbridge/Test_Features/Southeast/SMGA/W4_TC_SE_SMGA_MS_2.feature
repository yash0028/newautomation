# Last updated on
@SMGABusinessTestcases_AR
@releaseUnknown
@iterationUnknown
Feature: W4_TC_SE_SMGA_MS_2
  #Mississippi (MS)
  @W4_TC_SE_SMGA_1
  @Manual
  @User_Interface  
  @UAT_AUTO
  @UAT_AUTO_INITIAL_TRANSACTION
  @SMGA_INITIAL
  @W4LCJ
  @UAT_AUTO_INITIAL_TRANSACTION_W4
  Scenario Outline: <TCName> - [RL0] Author SPGA contract in <site>
	 Given I am logged into Exari Dev as a valid user and go to the "<site>" site
  
    #Draft
    And I am using the "<TCName>" data from "<paperType>_SE.csv" of "<site>" and paper type "<paperType>"
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
      #Approval
    And I Approve HBP Red Door
    And I Approve Payment Appendix
      #Final Capture Cont.
    And I Set Status as Final Pending QA
    And I complete final capture by add provider using TIN
    
    #Activate
    And I Set Status as Active
  	And I capture Contract Number

    #CMD Checking
    And I Verify CMD and Capture Status

    Examples:    
       | site            | paperType     | TCName            |
       | southeast uhn   | SMGA          | W4_TC_SE_SMGA_MS_2|
