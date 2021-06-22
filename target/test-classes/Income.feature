@test
Feature: Login scenarios
	
  	@TC1
Scenario: TC1_Verify Value Of Incomes Should display correctly in Balance amount and Income Amount field
		When user clicks on "btn_OpenNavigation" button on "MonefyHome" page
		And user clicks on the "Month" button on "MonefyHome" page
		And user clicks on "btn_income" button on "MonefyHome" page 
		Then user should navigate to "New income" page
		When user enter value "random_IncomeValue" into textbox "txtbox_amount" on "IncomePage" page
		And user clicks on "btn_ChooseCatagory" button on "IncomePage" page
		And user clicks on "option_Salary" button on "IncomePage" page
		Then user verify the value of "txtbox_balanceAmt" should be "random_IncomeValue" on "MonefyHome" page
		And user verify the value of "txtbox_incomeAmt" should be "random_IncomeValue" on "MonefyHome" page
 
		 @TC2
	Scenario: TC2_Verify Value Of Deposits and Savings SUM Should display correctly in Balance amount and Income Amount field
		When user clicks on "btn_OpenNavigation" button on "MonefyHome" page
		And user clicks on the "Month" button on "MonefyHome" page
		And user clicks on "btn_income" button on "MonefyHome" page 
		Then user should navigate to "New income" page
		When user enter value "random_IncomeValue1" into textbox "txtbox_amount" on "IncomePage" page
		And user clicks on "btn_ChooseCatagory" button on "IncomePage" page
		And user clicks on "option_Deposits" button on "IncomePage" page
		
		And user clicks on "btn_income" button on "MonefyHome" page 
		When user enter value "random_IncomeValue2" into textbox "txtbox_amount" on "IncomePage" page
		And user clicks on "btn_ChooseCatagory" button on "IncomePage" page
		And user clicks on "option_Savings" button on "IncomePage" page
		
		Then user verify the value of "txtbox_balanceAmt" should be "totalIncomeValue" on "MonefyHome" page
		And user verify the value of "txtbox_incomeAmt" should be "totalIncomeValue" on "MonefyHome" page
		
		 @TC3
	Scenario: TC3_Verify Value Of Savings Should display correctly in Balance amount and Income Amount field
		When user clicks on "btn_OpenNavigation" button on "MonefyHome" page
		And user clicks on the "Month" button on "MonefyHome" page
		And user clicks on "btn_income" button on "MonefyHome" page 
		Then user should navigate to "New income" page
		When user enter value "random_IncomeValue" into textbox "txtbox_amount" on "IncomePage" page
		And user clicks on "btn_ChooseCatagory" button on "IncomePage" page
		And user clicks on "option_Savings" button on "IncomePage" page
		Then user verify the value of "txtbox_balanceAmt" should be "random_Value" on "MonefyHome" page
		And user verify the value of "txtbox_incomeAmt" should be "random_Value" on "MonefyHome" page
		
		 @TC4
Scenario: TC4_Verify Value Of Deposits Should display correctly in Balance amount and Income Amount field
		When user clicks on "btn_OpenNavigation" button on "MonefyHome" page
		And user clicks on the "Month" button on "MonefyHome" page
		And user clicks on "btn_income" button on "MonefyHome" page 
		Then user should navigate to "New income" page
		When user enter value "random_IncomeValue" into textbox "txtbox_amount" on "IncomePage" page
		And user clicks on "btn_ChooseCatagory" button on "IncomePage" page
		And user clicks on "option_Deposits" button on "IncomePage" page
		Then user verify the value of "txtbox_balanceAmt" should be "random_Value" on "MonefyHome" page
		And user verify the value of "txtbox_incomeAmt" should be "random_Value" on "MonefyHome" page		
		
		 @TC6
	Scenario: TC6_Verify Value Of Salary and Savings SUM Should display correctly in Balance amount and Income Amount field
		When user clicks on "btn_OpenNavigation" button on "MonefyHome" page
		And user clicks on the "Month" button on "MonefyHome" page
		And user clicks on "btn_income" button on "MonefyHome" page 
		Then user should navigate to "New income" page
		When user enter value "random_IncomeValue1" into textbox "txtbox_amount" on "IncomePage" page
		And user clicks on "btn_ChooseCatagory" button on "IncomePage" page
		And user clicks on "option_Salary" button on "IncomePage" page
		
		And user clicks on "btn_income" button on "MonefyHome" page 
		When user enter value "random_IncomeValue2" into textbox "txtbox_amount" on "IncomePage" page
		And user clicks on "btn_ChooseCatagory" button on "IncomePage" page
		And user clicks on "option_Savings" button on "IncomePage" page
		
		Then user verify the value of "txtbox_balanceAmt" should be "totalIncomeValue" on "MonefyHome" page
		And user verify the value of "txtbox_incomeAmt" should be "totalIncomeValue" on "MonefyHome" page		
	 