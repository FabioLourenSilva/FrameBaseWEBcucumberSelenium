package pages;

import core.CommonsBasePage;
import org.openqa.selenium.By;

public class HomePage extends CommonsBasePage {
    //QA
//    By buttonBotBV = By.xpath("//body/app-root[1]/app-home[1]/app-bot-dashboard[1]/div[1]/owl-carousel[1]/owl-carousel-child[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[3]/app-bot-display[1]/div[1]");
    By buttonBotBV = By.xpath("//div[@title='fechadobancoBV']");
    // ".icon-right"
//    By buttonAceitarCookies = By.xpath("/html/body/div[5]/div[2]/div/div[1]/div/div[2]/div/button");
    By aceitarTermos = By.xpath("/html/body/div[4]/div[1]/div[2]/div/div[2]/button");

    By openAccount = By.xpath("/html/body/div[3]/div/header/div[1]/div/div[2]/nav[1]/ul/li[3]/a/span[1]/span");
    public void clicarBotaoBotBancoBV() {
        clickElement(buttonBotBV);
    }

    public void openAccount(){
        clickElement(openAccount);

    }

    public void aceitarTermos(){
        clickElement(aceitarTermos);
    }

}
