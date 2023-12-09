package core;

import org.openqa.selenium.*;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import java.time.Duration;

import static org.junit.Assert.assertTrue;

public class CommonsBasePage extends DriverFactory{

     WebDriverWait wait = new WebDriverWait(getDriver(), Duration.ofSeconds(20));


    Actions builder = new Actions(getDriver());

    public void clickElement(By element) {
        wait.until(ExpectedConditions.elementToBeClickable(element)).click();

    }

    public void sendTextElement(By element, String text) {
        wait.until(ExpectedConditions.visibilityOfElementLocated(element)).sendKeys(text);
    }

    public void scrollAtElement(WebElement element) {
        ((JavascriptExecutor) getDriver()).executeScript("arguments[0].scrollIntoView(true);", element);
    }

    public void validateConditionTrue(String failMsg, Boolean condition) {
        assertTrue(failMsg, condition);
    }

    public WebElement validateElementAppeared(By element) {
        return wait.until(ExpectedConditions.visibilityOfElementLocated(element));
    }

    public void waitElementAppeared(By element) {
        wait.until(ExpectedConditions.visibilityOfElementLocated(element));
    }

    public void hover(By element) {
        WebElement webElement = wait.until(ExpectedConditions.visibilityOfElementLocated(element));
        builder.moveToElement(webElement).build().perform();
    }

    public void sendEnter(By element){
        wait.until(ExpectedConditions.visibilityOfElementLocated(element)).sendKeys(Keys.ENTER);
    }


}
