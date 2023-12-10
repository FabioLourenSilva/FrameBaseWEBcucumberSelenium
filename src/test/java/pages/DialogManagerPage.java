package pages;

import core.CommonsBasePage;
import io.cucumber.java.pt.Entao;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

public class DialogManagerPage extends CommonsBasePage {

    By buttonChatbot = By.xpath("/html/body/app-root/app-homelayout/mat-sidenav-container/mat-sidenav-content/div/app-answers/app-header-submenu/app-bot-simulator/div/div[2]/ul/li[2]");
    By buttonChatbotWeb = By.xpath("/html/body/app-root/app-homelayout/mat-sidenav-container/mat-sidenav-content/div/app-answers/app-header-submenu/app-bot-simulator/div/div[2]/ul/li[1]");
    By buttonChatbotMinhaBV = By.xpath("/html/body/div[4]/div[1]/div[1]/div/div/div/button");
    By buttonWhatsBV = By.cssSelector(".list-channels > .ng-star-inserted:nth-child(3)");
    By buttonAppMobileBV = By.xpath("/html/body/app-root/app-homelayout/mat-sidenav-container/mat-sidenav-content/div/app-answers/app-header-submenu/app-bot-simulator/div/div[2]/ul/li[2]");
//    By buttonWebBV = By.cssSelector(".list-channels > .ng-star-inserted:nth-child(1)");
    // //span[contains(text(),'Área de trabalho')]
    // //div[contains(text(),'Área de trabalho')]
    By buttonAreaDeTrabalho = By.xpath("/html/body/app-root/app-homelayout/mat-sidenav-container/mat-sidenav-content/div/app-bot-simulator-button/div/button");
    By buttonDemoChat = By.xpath("/html/body/app-root/app-homelayout/mat-sidenav-container/mat-sidenav-content/div/app-bot-simulator-button/div/button");
    //PROD
//    By buttonAppMobileBV = By.cssSelector(".list-channels > .ng-star-inserted:nth-child(1)");
//    By buttonWebBV = By.cssSelector(".list-channels > .ng-star-inserted:nth-child(2)");

//    By textMsgBoasVindas = By.xpath("//app-header-submenu/app-bot-simulator[1]/div[1]/div[2]/app-message-bot-simulator[1]/div[1]/div[2]");
//    WebElement aux;

    By textMsgBoasVindasMinhaBV = By.xpath("/html/body/app-foundation-interface-chatbot/app-chatbot-root/app-chatbot-wrapper/div/div/app-chatbot-body/div/div/div[2]/app-chatbot-bubble/div/span/div/div/div/div[1]");
    By textMsgBoasVindasEVA = By.xpath("/html/body/app-root/app-homelayout/mat-sidenav-container/mat-sidenav-content/div/app-answers/app-header-submenu/app-bot-simulator/div/div[2]/app-message-bot-simulator/div/div[2]/div/span");
    WebElement aux;




    public void clicarBotaoChatBotApp() {
        clickElement(buttonChatbot);
//        try {
//            Thread.sleep(8000);
//        } catch (InterruptedException e) {
//            e.printStackTrace();
//        }
//        clickElement(buttonAppMobileBV);
//        try {
//            Thread.sleep(8000);
//        } catch (InterruptedException e) {
//            e.printStackTrace();
//        }
    }

    public void clicarBotaoChatBotWeb() {
        clickElement(buttonChatbotWeb);
        try {
            Thread.sleep(2000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
//        clickElement(buttonWebBV);
        try {
            Thread.sleep(2000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    public void clicarBotaoChatBotWebMinhaBV() {
        clickElement(buttonChatbotMinhaBV);
        try {
            Thread.sleep(2000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
//        clickElement(buttonWebBV);
        try {
            Thread.sleep(2000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    public void clicarBotaoChatBotWhatsApp() {
        clickElement(buttonChatbot);
        try {
            Thread.sleep(2000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        clickElement(buttonWhatsBV);
        try {
            Thread.sleep(2000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    public void clicarBotaoAreaDeTrabalho() {
        clickElement(buttonAreaDeTrabalho);
    }

    public void clicarBotaoDemoChat() {
        clickElement(buttonDemoChat);
    }


    public void validarTextoBoasVindasMinhaBV() {
        waitElementAppeared(textMsgBoasVindasMinhaBV);
        aux = getDriver().findElement(textMsgBoasVindasMinhaBV);
        System.out.println(aux.getText());
        validateConditionTrue("texto errado", aux.getText().contains("Sou Levi, assistente virtual do BV"));
    }

    public void validarTextoBoasVindasEVA() {
        waitElementAppeared(textMsgBoasVindasEVA);
        aux = getDriver().findElement(textMsgBoasVindasEVA);
        System.out.println(aux.getText());
        validateConditionTrue("texto errado", aux.getText().contains("Sou Levi, assistente virtual do BV"));
    }


    public void validarTextoBoasVindasWhatsApp() {
        waitElementAppeared(textMsgBoasVindasEVA);
        aux = getDriver().findElement(textMsgBoasVindasEVA);
        System.out.println(aux.getText());
        validateConditionTrue("texto errado", aux.getText().contains("Oi! Sou Levi"));
        validateConditionTrue("texto errado", aux.getText().contains("Quero meu boleto"));
    }


}
