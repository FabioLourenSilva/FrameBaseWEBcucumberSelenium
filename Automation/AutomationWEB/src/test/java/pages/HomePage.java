package pages;

import core.CommonsBasePage;
import org.openqa.selenium.By;

public class HomePage extends CommonsBasePage {
    By aceitarTermos = By.xpath("/html/body/div[4]/div[1]/div[2]/div/div[2]/button");
    By openAccount = By.xpath("/html/body/div[3]/div/header/div[1]/div/div[2]/nav[1]/ul/li[3]/a/span[1]/span");

    public void openAccount(){
        clickElement(openAccount);

    }

    public void aceitarTermos(){
        clickElement(aceitarTermos);
    }

}
