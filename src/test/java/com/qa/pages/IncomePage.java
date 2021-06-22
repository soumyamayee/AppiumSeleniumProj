package com.qa.pages;

import com.qa.utils.GlobalParams;
import com.qa.utils.TestUtils;

import io.appium.java_client.AppiumDriver;
import io.appium.java_client.MobileElement;
import io.appium.java_client.android.AndroidDriver;
import io.appium.java_client.pagefactory.AndroidFindBy;
import io.appium.java_client.pagefactory.iOSXCUITFindBy;
import org.openqa.selenium.By;

public class IncomePage extends BasePage {
	 protected AppiumDriver<?> driver;
	TestUtils utils = new TestUtils();
	public IncomePage(AndroidDriver<MobileElement> driver){
		this.driver=driver;
	};
	
	@AndroidFindBy (accessibility = "Open navigation")
	public MobileElement btn_OpenNavigation;
	
	@AndroidFindBy (id = "com.monefy.app.lite:id/income_button") 	
	private MobileElement btn_income;
	
	@AndroidFindBy (xpath = "//android.widget.TextView[@index=1]")
	public MobileElement page_Newincome;
	
	@AndroidFindBy (id = "com.monefy.app.lite:id/keyboard_action_button") 	
	private MobileElement btn_ChooseCatagory;
	
	@AndroidFindBy (xpath = "//android.widget.LinearLayout[@instance=3]") 	
	private MobileElement option_Deposits;
	
	@AndroidFindBy (xpath = "//android.widget.LinearLayout[@instance=4]") 	
	private MobileElement option_Salary;
	
	@AndroidFindBy (xpath = "//android.widget.LinearLayout[@instance=5]") 	
	private MobileElement option_Savings;

	@AndroidFindBy (id = "com.monefy.app.lite:id/amount_text")
	public MobileElement txtbox_amount;
	
	@AndroidFindBy (id = "com.monefy.app.lite:id/balance_amount") 	
	private MobileElement txtbox_balanceAmt;
	
	@AndroidFindBy (id = "com.monefy.app.lite:id/income_amount_text") 	
	private MobileElement txtbox_incomeAmt;
	
	@AndroidFindBy (id = "com.monefy.app.lite:id/expense_amount_text") 	
	private MobileElement txtbox_ExpenseAmt;


	@AndroidFindBy (id = "com.monefy.app.lite:id/income_button") 	
	private MobileElement titleTxt;
	
	public String getProductTitle(String title) throws Exception {
		switch(new GlobalParams().getPlatformName()){
			case "Android":
				return getText(andScrollToElementUsingUiScrollable("text", title), "product title is: " + title);
			
			default:
				throw new Exception("Invalid platform name");
		}
	}

	public By defProductPrice(String title) throws Exception {
		switch(new GlobalParams().getPlatformName()){
			case "Android":
				return By.xpath("//*[@text=\"" + title + "\"]/following-sibling::*[@content-desc=\"test-Price\"]");
			case "iOS":
				return By.xpath("//XCUIElementTypeOther[@name=\"" + title + "\"]/following-sibling::*[1]/child::XCUIElementTypeStaticText[@name=\"test-Price\"]");
			default:
				throw new Exception("Invalid platform name");
		}
	}

	
	
}
