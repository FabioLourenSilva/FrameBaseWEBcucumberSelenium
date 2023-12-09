package pages;

import core.CommonsBasePage;
import org.openqa.selenium.By;

public class LoginPage extends CommonsBasePage {


    private final String URL_SITE_MODAL = "https://www.modal.com.br/";

    private final String LOGIN = "";
    private final String SENHA = "";



    By inputEmail = By.id("username");
    By inputSenha = By.id("password");
    By buttonEntrar = By.name("login");

    public void navegarAteSiteModal() {
        getDriver().navigate().to(URL_SITE_MODAL);
    }

    public void efetuarLogin() {
        sendTextElement(inputEmail, LOGIN);
        sendTextElement(inputSenha, SENHA);
        clickElement(buttonEntrar);
    }
}
