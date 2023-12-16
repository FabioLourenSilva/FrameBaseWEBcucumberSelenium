package pages;

import core.CommonsBasePage;
import org.openqa.selenium.By;

public class HomePage extends CommonsBasePage {


    By aceitarTermos = By.xpath("/html/body/div[4]/div[1]/div[2]/div/div[2]/button");
    By buttonRefresh = By.xpath("/html/body/div[2]/div[2]/div[1]/div[2]/form/div[2]/table/thead/tr[2]/td[2]/div[2]/a/i");

    By customer = By.xpath("/html/body/div[2]/div[2]/div[1]/div[2]/form/div[2]/table/tbody/tr[3]/td[3]");
    public void refreshListGrocercrud(){
        clickElement(buttonRefresh);
    }

    public void lookElement(){
        waitElementAppeared(customer);
    }


    public void aceitarTermos(){
        clickElement(aceitarTermos);
    }

}
