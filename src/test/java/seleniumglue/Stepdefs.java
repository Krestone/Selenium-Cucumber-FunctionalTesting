package seleniumglue;

import cucumber.api.PendingException;
import cucumber.api.java.After;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.WebDriverWait;

import cucumber.api.java.After;
import cucumber.api.java.Before;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;
import cucumber.api.java.en.Then;
import static org.junit.Assert.*;

public class Stepdefs {

    // instantiating web driver object
    public static WebDriver driver;

    // user A scenario

    @Before
    public void setWebDriver(){
        // instantiating web driver object

        // need to make sure that its your local path directory
        System.setProperty("webdriver.chrome.driver", "C:/Users/Admin/Documents/École/McGill/W19/ECSE428/chromedriver.exe");
        driver = new ChromeDriver();
        driver.navigate().to("https://mail.google.com/");
    }



    @Given("^Open the Firefox and launch the application$")
    public void open_the_Firefox_and_launch_the_application() throws Throwable
    {
        System.out.println("This Step open the Firefox and launch the application.");
    }

    @When("^Enter the Username and Password$")
    public void enter_the_Username_and_Password() throws Throwable
    {
        System.out.println("This step enter the Username and Password on the login page.");
    }

    @Then("^Reset the credential$")
    public void Reset_the_credential() throws Throwable
    {
        System.out.println("This step click on the Reset button.");
    }
}
