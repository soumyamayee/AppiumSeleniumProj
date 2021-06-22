package com.qa.pages;

import com.qa.utils.TestUtils;
import io.appium.java_client.MobileElement;
import io.appium.java_client.android.AndroidDriver;
import io.appium.java_client.pagefactory.AndroidFindBy;
import io.appium.java_client.pagefactory.iOSXCUITFindBy;

public class ExpensePage extends BasePage{
	TestUtils utils = new TestUtils();
	public ExpensePage(AndroidDriver<MobileElement> driver){
		this.driver=driver;
	};
	@AndroidFindBy (accessibility = "Open navigation")
	public MobileElement btn_OpenNavigation;
	
	@AndroidFindBy (id = "com.monefy.app.lite:id/expense_button") 	
	private MobileElement btn_expense;
	
	@AndroidFindBy (xpath = "//android.widget.TextView[@index=1]")
	public MobileElement page_NewExpense;
	
	@AndroidFindBy (id = "com.monefy.app.lite:id/keyboard_action_button") 	
	private MobileElement btn_ChooseCatagory;
	
	@AndroidFindBy (xpath = "android.widget.LinearLayout[@index=0]") 	
	private MobileElement option_Bills;		
	
	@AndroidFindBy (id = "com.monefy.app.lite:id/amount_text")
	public MobileElement txtbox_amount;
	
	@AndroidFindBy (id = "com.monefy.app.lite:id/balance_amount") 	
	private MobileElement txtbox_expensebalanceAmt;
	
	@AndroidFindBy (id = "com.monefy.app.lite:id/expense_amount_text") 	
	private MobileElement txtbox_expenseAmt;
	

}
