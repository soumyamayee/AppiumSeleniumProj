@test
Feature: Expense  
 @TC1
Scenario: TC1_Verify Value Of Expenses Should display(Income-Expense) correctly in Balance amount and Expense Amount field
		When user clicks on "btn_OpenNavigation" button on "MonefyHome" page
		And user clicks on the "Month" button on "MonefyHome" page
		When user enter value "random_IncomeValue" into textbox "txtbox_amount" on "IncomePage" page
		And user clicks on "btn_ChooseCatagory" button on "IncomePage" page
		And user clicks on "option_Salary" button on "IncomePage" page
		And user clicks on "btn_expense" button on "MonefyHome" page 
		Then user should navigate to "New expense" page
		When user enter value "random_ExpenseValue" into textbox "txtbox_amount" on "ExpensePage" page
		And user clicks on "btn_ChooseCatagory" button on "ExpensePage" page
		And user clicks on "option_Bills" button on "ExpensePage" page
		Then user verify the value of "txtbox_expensebalanceAmt" should be "random_Value" on "MonefyHome" page
		And user verify the value of "txtbox_expenseAmt" should be "random_Value" on "MonefyHome" page
					
		 @TC2
	Scenario: TC2_Verify Value Of Bills and Car SUM Should display correctly in Balance amount and Expense Amount field
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
		
	  @TC3
	Scenario: TC3_Verify Value Of Total Income Minus Total Expense Should display correctly in Balance amount field
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
		
		Then user verify the value of "txtbox_incomeAmt" should be "totalIncomeValue" on "MonefyHome" page
		
		When user clicks on "btn_expense" button on "MonefyHome" page 
		Then user should navigate to "New expense" page
		When user enter value "random_ExpenseValue" into textbox "txtbox_amount" on "ExpensePage" page
		And user clicks on "btn_ChooseCatagory" button on "ExpensePage" page
		And user clicks on "option_Bills" button on "ExpensePage" page
		
		And user clicks on "btn_expense" button on "MonefyHome" page 
		Then user should navigate to "New expense" page
		When user enter value "random_ExpenseValue" into textbox "txtbox_amount" on "ExpensePage" page
		And user clicks on "btn_ChooseCatagory" button on "ExpensePage" page
		And user clicks on "option_Car" button on "ExpensePage" page		
		
		And user verify the value of "txtbox_expenseAmt" should be "totalexpenseValue" on "MonefyHome" page		
		Then user verify the value of "txtbox_expensebalanceAmt" should be "totalBalanceValue" on "MonefyHome" page
		
		