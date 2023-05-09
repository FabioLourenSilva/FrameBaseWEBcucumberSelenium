package stepsDefinitions;

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
    DialogManagerPage dialogManagerPage = new DialogManagerPage();
    ChatModal chatModal = new ChatModal();

    DriverFactory drive = new DriverFactory();

    @Given("que acessei o site do modal \\Web")
    public void que_acessei_o_site_do_modal_web() throws InterruptedException {
        loginPage.navegarAteSiteModal();
        homePage.clicarBotaoAceitarCookies();
        Thread.sleep(5000);

//        homePage.clicarBotaoAceitarCookies();
//        homePage.aceitarTermos();
//        dialogManagerPage.clicarBotaoChatBotWebMinhaBV();
//        dialogManagerPage.validarTextoBoasVindasMinhaBV();
    }

    @When("eu digitar a intencao BV {string}")
    public void eu_digitar_a_intencao_MinhaBV(String intent) {
        chatModal.escreverIntentMinhaBV(intent);
    }

    @When("enviar a mensagem BV")
    public void enviar_a_mensagem_MinhaBV() {
        chatModal.apertarEnterMinhaBV();
    }

    @When("eu digitar a intencao {string}")
    public void eu_digitar_a_intencao(String intent) {
        chatModal.escreverIntentEVA(intent);
    }

    @When("enviar a mensagem")
    public void enviar_a_mensagem() {
        chatModal.apertarEnterEVA();
    }

    @When("clicar no botao {string}")
    public void clicar_no_botao(String botao) {
        chatModal.clicarBotao(botao);
    }
//    @When("clicar no elemento {string}")
//    public void clicar_no_elemento(String string) {
//        chatModal.clicarElemento(string);
//    }
@Given("clicar no elemento {string}")
public void clicar_no_elemento(String string) {
    chatModal.clicarElemento(string);
}

    @When("selecionar data")
    public void selecionar_data() {
        chatModal.selecionarData();
    }

    @When("selecionar data atraso")
    public void selecionar_data_atraso() {
        chatModal.selecionarDataAtraso();
    }

    @When("validar data do botao selecionar data")
    public void validar_data_do_botao_selecionar_data() {
        chatModal.validarDataVectoBotao();
    }

    @When("rolar pagina pagamento")
    public void rolar_pagina_Pagamento() {
      chatModal.rolarPaginaPagamento();
    }

    @When("rolar pagina boleto")
    public void rolar_pagina_boleto() {
        chatModal.rolarPaginaBoleto();
    }

    @When("rolar pagina boleto2")
    public void rolar_pagina_boleto2() {
        chatModal.rolarPaginaBoleto2();
    }

    @When("validar datas vencimento")
    public void validar_datas_vencimento(){
        chatModal.validaDataVecto();
    }

    @When("validar composicao boleto")
    public void validar_composicao_boleto() {
        chatModal.validaComposicaoBoleto();
    }

    @When("validar composicao boleto2")
    public void validar_composicao_boleto2() {
        chatModal.validaComposicaoBoleto2();
    }

    @Given("validar menu inicial modalmais")
    public void validar_menu_inicial_modalmais() {
        chatModal.validarConteudo(By.xpath("/html/body/div[2]/div/div[3]/div/div[2]/div[3]/div/div/div[1]/p[2]"),
                "Faça compras\ncom seu cartão de débito do investidor");
        chatModal.validarConteudo(By.xpath("/html/body/div[2]/div/div[3]/div/div[2]/div[3]/div/div/div[2]/p[2]"),
                "Pague suas\ncontas usando seus rendimentos");
        chatModal.validarConteudo(By.xpath("/html/body/div[2]/div/div[3]/div/div[2]/div[3]/div/div/div[3]/p[2]"),
                "Saldo em\nconta garantido pelo FGC");
        chatModal.validarConteudo(By.xpath("/html/body/div[2]/div/div[3]/div/div[2]/div[3]/div/div/div[4]/p[2]"),
                "Taxa zero para TED e manutenção de conta");
    }

    @Then("Sou direcionado para a pagina modalMais")
    public void sou_direcionado_para_a_pagina_modal_mais() {
       drive.trocarAba();
    }

    @Then("Sou direcionado para tela de login")
    public void sou_direcionado_para_tela_de_login() {
       chatModal.validarConteudo(By.xpath("/html/body/div[1]/section/section/div/div[1]/div[1]/h4"),
               "Acesse sua conta");
    }

    @Then("validar conteudo \\(ballon {int}) {string}")
    public void validar_conteudo_ballon(Integer ballon, String conteudo) {

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
            case 30:
                chatModal.validarConteudoTrigesimoBalao(conteudo);
                break;
            case 31:
                chatModal.validarConteudoTrigesimoPrimeiroBalao(conteudo);
                break;
            case 32:
                chatModal.validarConteudoTrigesimoSegundoBalao(conteudo);
                break;
            case 33:
                chatModal.validarConteudoTrigesimoTerceiroBalao(conteudo);
                break;
            case 34:
                chatModal.validarConteudoTrigesimoQuartoBalao(conteudo);
                break;
            case 35:
                chatModal.validarConteudoTrigesimoQuintoBalao(conteudo);
                break;
            case 36:
                chatModal.validarConteudoTrigesimoSextoBalao(conteudo);
                break;
            case 37:
                chatModal.validarConteudoTrigesimoSetimoBalao(conteudo);
                break;
            case 38:
                chatModal.validarConteudoTrigesimoOitavoBalao(conteudo);
                break;
            case 39:
                chatModal.validarConteudoTrigesimoNonoBalao(conteudo);
                break;
            case 40:
                chatModal.validarConteudoQuadragesimoBalao(conteudo);
                break;
            case 41:
                chatModal.validarConteudoQuadragesimoPrimeiroBalao(conteudo);
                break;
            case 42:
                chatModal.validarConteudoQuadragesimoSegundoBalao(conteudo);
                break;
            case 43:
                chatModal.validarConteudoQuadragesimoTerceiroBalao(conteudo);
                break;
            case 44:
                chatModal.validarConteudoQuadragesimoQuartoBalao(conteudo);
                break;
            case 45:
                chatModal.validarConteudoQuadragesimoQuintoBalao(conteudo);
                break;
            case 46:
                chatModal.validarConteudoQuadragesimoSextoBalao(conteudo);
                break;
            case 47:
                chatModal.validarConteudoQuadragesimoSetimoBalao(conteudo);
                break;
            case 48:
                chatModal.validarConteudoQuadragesimoOitavoBalao(conteudo);
                break;
            case 49:
                chatModal.validarConteudoQuadragesimoNonoBalao(conteudo);
                break;
            case 50:
                chatModal.validarConteudoQuintagesimoBalao(conteudo);
                break;
            case 51:
                chatModal.validarConteudoQuintagesimoPrimeiroBalao(conteudo);
                break;
            case 52:
                chatModal.validarConteudoQuintagesimoSegundoBalao(conteudo);
                break;
            default:
                System.out.println("A opção requisitada não existe!");
                if (ballon instanceof Integer) {
                    System.out.println("Programar!!");
                } else {
                    System.out.println("Podemos ignorar...");
                }
        }
    }
}
