package pages;

import core.CommonsBasePage;
import org.openqa.selenium.By;

public class LoginPage extends CommonsBasePage {

    private final String URL_SITE1 = "https://www.grocerycrud.com/v1.x/demo/bootstrap_theme_v4";
    private final String LOGIN = "";
    private final String SENHA = "";



    By inputEmail = By.id("username");
    By inputSenha = By.id("password");
    By buttonEntrar = By.name("login");

    public void goToSiteGrocercrud() {
        getDriver().navigate().to(URL_SITE1);
    }

    public void efetuarLogin() {
        sendTextElement(inputEmail, LOGIN);
        sendTextElement(inputSenha, SENHA);
        clickElement(buttonEntrar);
    }
}
