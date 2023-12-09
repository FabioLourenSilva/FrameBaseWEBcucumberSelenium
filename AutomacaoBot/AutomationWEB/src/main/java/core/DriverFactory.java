package core;

import org.openqa.selenium.Dimension;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WindowType;

public class DriverFactory {

    private static WebDriver driver;

    public void createDriver() {
        System.setProperty("webdriver.chrome.driver","/Users/fabiolourenco/Desktop/WorkspacePessoal/FrameBaseForModal/AutomacaoBot/AutomationWEB/src/main/resources/Drive/chromedriver");
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
