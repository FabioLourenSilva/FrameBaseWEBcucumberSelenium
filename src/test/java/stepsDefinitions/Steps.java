package stepsDefinitions;

import core.CommonsBasePage;
import core.DriverFactory;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.openqa.selenium.By;
import pages.ChatModal;
import pages.DialogManagerPage;
import pages.HomePage;
import pages.LoginPage;


public class Steps {
    LoginPage loginPage = new LoginPage();
    HomePage homePage = new HomePage();
    ChatModal chatModal = new ChatModal();
    CommonsBasePage options = new CommonsBasePage();

    @Given("que acessei a url \\Web")
    public void goToURL() {
        loginPage.goToSiteGrocercrud();
    }

    @Given("visualizo o customer {string}")
    public void viewTheCustomer(String customer) {
    homePage.findCustomer(By.xpath("//*[contains(text(),'"+customer+"')]/../td[2]/div/a[contains(./@href, 'edit')]"));
    }

    @When("clico no botão editar do customer {string}")
    public void clickOnButton(String customer) {
        options.clickElement(By.xpath("//*[contains(text(),'"+customer+"')]/../td[2]/div/a[contains(./@href, 'edit')]"));
    }

    @When("visualizo a tela de edição")
    public void viewScreenEdit() {
        options.validateElement(By.xpath("/html/body/div[2]/div/div/div/div[1]/div[1]"), "Edit Customer");
    }

    @When("edito a lista")
    public void editList()  {
        options.clearElement(By.id("field-contactFirstName"));
        options.sendTextElement(By.id("field-contactFirstName"), "Elias test");
        options.clearElement(By.id("field-phone"));
        options.sendTextElement(By.id("field-phone"), "55555555555");
        options.clickElement(By.xpath("/html/body/div[2]/div/div/div/div[2]/form/div[15]/div/button[1]"));
        options.waitElementAppeared(By.xpath("/html/body/div[2]/div/div/div/div[2]/form/div[14]/div[2]/p"));
        options.validateElement(By.xpath("/html/body/div[2]/div/div/div/div[2]/form/div[14]/div[2]/p"),"Your data has been successfully updated. Go back to list");
    }

    @Then("clico em go back to list e o sistema exibe a lista novamente")
    public void goBackToList() {
       options.clickElement(By.xpath("/html/body/div[2]/div/div/div/div[2]/form/div[14]/div[2]/p/a"));
       options.waitElementAppeared(By.xpath("/html/body/div[2]/div[2]/div[1]/div[1]/div[1]"));
    }

    @When("clico no button refresh")
    public void clickButtonRefresh() {
        homePage.refreshListGrocercrud();
    }

    @When("usuario digita a intencao {string}")
    public void toTypeIntent(String intent) {
        chatModal.escreverIntentEVA(intent);
    }

    @When("usuario envia a mensagem")
    public void sendMensage() {
        chatModal.apertarEnterEVA();
    }

    @When("usuario cliaca no botao {string}")
    public void clickOnTheButton(String botao) {
        chatModal.clicarBotao(botao);
    }

    @Given("usuario clicar no elemento {string}")
    public void clickOnTheElement(String string) {
    chatModal.clicarElemento(string);
}

    @When("selecionar data")
    public void selectDate() {

    }


    @When("usuario rola Pagina")
    public void scrollPage() {
      chatModal.rolarPaginaPagamento();
    }


    @Then("usuario é direcionado para tela de login")
    public void redirectScreenLogin() {
       chatModal.validarConteudo(By.xpath("/html/body/div[1]/section/section/div/div[1]/div[1]/h4"),
               "Acesse sua conta");
    }

    @Then("validar conteudo \\(ballon {int}) {string}")
    public void validateConditionContent(Integer ballon, String conteudo) {

        switch (ballon) {
            case 3:
                chatModal.validarConteudoTerceiroBalao(conteudo);
                break;
            case 4:
                chatModal.validarConteudoQuartoBalao(conteudo);
                break;
            case 5:
                chatModal.validarConteudoQuintoBalao(conteudo);
                break;
            case 6:
                chatModal.validarConteudoSextoBalao(conteudo);
                break;
            case 7:
                chatModal.validarConteudoSetimoBalao(conteudo);
                break;
            case 8:
                chatModal.validarConteudoOitavoBalao(conteudo);
                break;
            case 9:
                chatModal.validarConteudoNonoBalao(conteudo);
                break;
            case 10:
                chatModal.validarConteudoDecimoBalao(conteudo);
                break;
            case 11:
                chatModal.validarConteudoDecimoPrimeiroBalao(conteudo);
                break;
            case 12:
                chatModal.validarConteudoDecimoSegundoBalao(conteudo);
                break;
            case 13:
                chatModal.validarConteudoDecimoTerceiroBalao(conteudo);
                break;
            case 14:
                chatModal.validarConteudoDecimoQuartoBalao(conteudo);
                break;
            case 15:
                chatModal.validarConteudoDecimoQuintoBalao(conteudo);
                break;
            default:
                System.out.println(":::Não existe o locator do conteudo, programar!:::");

        }
    }
}
