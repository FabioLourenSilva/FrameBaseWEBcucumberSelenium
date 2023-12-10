package core;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.WindowType;

public class DriverFactory {

    private static WebDriver driver;
    private static String webDriver = "webdriver.chrome.driver";
    private static String pathDriver = "/Users/fabiolourenco/Desktop/WorkspacePessoal/AutomationWEB/resources/Drive/chromedriver";
    public void createDriver() {
        System.setProperty(webDriver,pathDriver);
        ChromeOptions options = new ChromeOptions();
        options.addArguments("--remote-allow-origins=*");
        driver = new ChromeDriver(options);
        driver.manage().window().maximize();
    }

    public void CriarNovaAbaEtrocarAba(){
        driver.switchTo().newWindow(WindowType.TAB);

    }

    public void trocarAba(){
        String originalWindow = driver.getWindowHandle();
        assert driver.getWindowHandles().size() == 2;
        for (String windowHandle : driver.getWindowHandles()) {
            if(!originalWindow.contentEquals(windowHandle)) {
                driver.switchTo().window(windowHandle);
                break;
            }
        }
    }

    public WebDriver getDriver() {
        return driver;
    }


}
