package stepsDefinitions;

import core.DriverFactory;
import io.cucumber.java.*;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;

public class Hooks extends DriverFactory {


    @Before
    public void startDriver() {
        createDriver();
    }

    @AfterStep
    public void takeScreenshot(Scenario scenario) {
        byte[] screenshot = ((TakesScreenshot) getDriver()).getScreenshotAs(OutputType.BYTES);
        scenario.attach(screenshot, "image/png", scenario.getName());
    }

    @After
    public void cleanDriver() {
        getDriver().quit();
    }

    @Before
    public void instanciaDriver(Scenario scenario) {
        getDriver();
    }
}
