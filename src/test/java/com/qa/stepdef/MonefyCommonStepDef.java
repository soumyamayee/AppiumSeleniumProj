package com.qa.stepdef;

import com.qa.pages.BasePage;
import com.qa.pages.ExpensePage;
import com.qa.pages.IncomePage;
import com.qa.utils.GlobalParams;

import io.appium.java_client.MobileElement;
import io.appium.java_client.android.AndroidDriver;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

import java.util.HashMap;

import org.junit.Assert;

public class MonefyCommonStepDef extends BasePage {
	
	
	AndroidDriver<MobileElement> driver;
	IncomePage IP =new IncomePage(driver);
	ExpensePage EP = new ExpensePage(driver);
	 public HashMap<String,Integer> values=new HashMap<String,Integer>() ;
	
	@When("user clicks on \"([^\"]*)\" button on \"([^\"]*)\" page")
	public void user_clicks_on_the_button(MobileElement name,String page) throws Exception {
		currentPage(driver,page);
		click((MobileElement) ((BasePage) currentPage(driver,page)).find(name,10), "press Open Navigation button");
	    throw new io.cucumber.java.PendingException();
	}

	
	@Then("user should navigate to \"([^\"]*)\" page")
	public void user_should_navigate_to_page(String text) throws Exception {
		String value = null;
		 switch(text){
	         case "New income":
	             value = getAttribute(IP.page_Newincome, "text");
	             break;
	         case "New expense":
	        	// value = getAttribute(EP.page_Newexpense, "text");
	             break;
	         default:
	             throw new Exception("Unexpected value: " + text);
		 		}
		 Assert.assertEquals(value, text ,"Page "+ text+" Not displayed ");
	    throw new io.cucumber.java.PendingException();
	}

	@Then("user enter value \"([^\"]*)\" into textbox \"([^\"]*)\"  on \"([^\"]*)\" page")
	public void user_enter_value_into_textbox(String random_value, MobileElement name, String page) throws Exception {
		currentPage(driver,page);
		Integer value=getRandomValue();
		values.put(random_value,value);
		sendKeys(IP.txtbox_amount,value.toString());
	    throw new io.cucumber.java.PendingException();
	}
	
	@Then("user verify the value of \"([^\"]*)\" should be \"([^\"]*)\" on \"([^\"]*)\" page")
	public void user_verify_the_should_be(MobileElement elename, String value,String Page) {
		verifyAmountDisplayed(elename,value);		
	    throw new io.cucumber.java.PendingException();
	}
}
