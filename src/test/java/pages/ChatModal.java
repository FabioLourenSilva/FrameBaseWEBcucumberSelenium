package pages;

import core.CommonsBasePage;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;

import java.text.SimpleDateFormat;


public class ChatModal extends CommonsBasePage {


    //BallonsEVA
    By thirdBallon = By.xpath("//app-header-submenu/app-bot-simulator[1]/div[1]/div[2]/app-message-bot-simulator[3]/div[1]/div[2]");
    By fourthBallon = By.xpath("//app-header-submenu/app-bot-simulator[1]/div[1]/div[2]/app-message-bot-simulator[4]/div[1]/div[2]");
    By fifthBallon = By.xpath("//app-header-submenu/app-bot-simulator[1]/div[1]/div[2]/app-message-bot-simulator[5]/div[1]/div[2]");
    By sixthBallon = By.xpath("//app-header-submenu/app-bot-simulator[1]/div[1]/div[2]/app-message-bot-simulator[6]/div[1]/div[2]");
    By seventhBallon = By.xpath("//app-header-submenu/app-bot-simulator[1]/div[1]/div[2]/app-message-bot-simulator[7]/div[1]/div[2]");
    By eigththBallon = By.xpath("//app-header-submenu/app-bot-simulator[1]/div[1]/div[2]/app-message-bot-simulator[8]/div[1]/div[2]");
    By ninthBallon = By.xpath("//app-header-submenu/app-bot-simulator[1]/div[1]/div[2]/app-message-bot-simulator[9]/div[1]/div[2]");
    By tenthBallon = By.xpath("//app-header-submenu/app-bot-simulator[1]/div[1]/div[2]/app-message-bot-simulator[10]/div[1]/div[2]");
    By eleventhBallon = By.xpath("//app-header-submenu/app-bot-simulator[1]/div[1]/div[2]/app-message-bot-simulator[11]/div[1]/div[2]");
    By twelfthBallon = By.xpath("//app-header-submenu/app-bot-simulator[1]/div[1]/div[2]/app-message-bot-simulator[12]/div[1]/div[2]");
    By thirteenthBallon = By.xpath("//app-header-submenu/app-bot-simulator[1]/div[1]/div[2]/app-message-bot-simulator[13]/div[1]/div[2]");
    By fourteenthBallon = By.xpath("//app-header-submenu/app-bot-simulator[1]/div[1]/div[2]/app-message-bot-simulator[14]/div[1]/div[2]");
    By fifteenthBallon = By.xpath("//app-header-submenu/app-bot-simulator[1]/div[1]/div[2]/app-message-bot-simulator[15]/div[1]/div[2]");

    //BallonsMinhaBV
    By thirtiethBallon = By.xpath("/html/body/div[2]/div/div[3]/div/div[2]/div[1]/div");
    By thirtyfirstBallon = By.xpath("/html/body/app-foundation-interface-chatbot/app-chatbot-root/app-chatbot-wrapper/div/div/app-chatbot-body/div/div/div[4]/app-chatbot-bubble/div[2]/span/div/div/div");
    By thirtysecondBallon = By.xpath("/html/body/app-foundation-interface-chatbot/app-chatbot-root/app-chatbot-wrapper/div/div/app-chatbot-body/div/div/div[5]/app-chatbot-bubble/div[2]/span/div/div[1]/div");
    By ThirtythirdBallon = By.xpath("/html/body/app-foundation-interface-chatbot/app-chatbot-root/app-chatbot-wrapper/div/div/app-chatbot-body/div/div/div[5]/app-chatbot-bubble/div[2]/span/div/div[2]/div/div[1]");
    By thirtyfourthBallon = By.xpath("/html/body/app-foundation-interface-chatbot/app-chatbot-root/app-chatbot-wrapper/div/div/app-chatbot-body/div/div/div[6]/app-chatbot-bubble/div[2]/span/div/div[1]/div/div[1]");
    By thirtyfifthBallon = By.xpath("/html/body/app-foundation-interface-chatbot/app-chatbot-root/app-chatbot-wrapper/div/div/app-chatbot-body/div/div/div[6]/app-chatbot-bubble/div[2]/span/div/div[3]/div/div[1]");
    By thirtysixthBallon = By.xpath("/html/body/app-foundation-interface-chatbot/app-chatbot-root/app-chatbot-wrapper/div/div/app-chatbot-body/div/div/div[5]/app-chatbot-bubble/div[2]/span/div/div[2]/div/div[1]");
    By thirtyseventhBallon = By.xpath("/html/body/app-foundation-interface-chatbot/app-chatbot-root/app-chatbot-wrapper/div/div/app-chatbot-body/div/div/div[7]/app-chatbot-bubble/div[2]/span/div/div");
    By thirtyeighthBallon = By.xpath("/html/body/app-foundation-interface-chatbot/app-chatbot-root/app-chatbot-wrapper/div/div/app-chatbot-body/div/div/div[4]/app-chatbot-bubble/div[2]/span/div/div[1]/div");
    By thirtyninthBallon = By.xpath("/html/body/app-foundation-interface-chatbot/app-chatbot-root/app-chatbot-wrapper/div/div/app-chatbot-body/div/div/div[4]/app-chatbot-bubble/div[2]/span/div/div[2]/div/div[1]");
    By fortiethBallon = By.xpath("/html/body/app-foundation-interface-chatbot/app-chatbot-root/app-chatbot-wrapper/div/div/app-chatbot-body/div/div/div[5]/app-chatbot-bubble/div[2]/span/div/div[1]/div/div[1]");
    By fortyfirstBallon = By.xpath("/html/body/app-foundation-interface-chatbot/app-chatbot-root/app-chatbot-wrapper/div/div/app-chatbot-body/div/div/div[5]/app-chatbot-bubble/div[2]/span/div/div[2]/div");
    By fortysecondBallon = By.xpath("/html/body/app-foundation-interface-chatbot/app-chatbot-root/app-chatbot-wrapper/div/div/app-chatbot-body/div/div/div[6]/app-chatbot-bubble/div[2]/span/div/div/div");
    By fortythirdBallon = By.xpath("/html/body/app-foundation-interface-chatbot/app-chatbot-root/app-chatbot-wrapper/div/div/app-chatbot-body/div/div/div[7]/app-chatbot-bubble/div[2]/span/div/div");
    By fortyfourthBallon = By.xpath("/html/body/app-foundation-interface-chatbot/app-chatbot-root/app-chatbot-wrapper/div/div/app-chatbot-body/div/div/div[8]/app-chatbot-bubble/div[2]/span/div/div[1]/div/div[1]");
    By fortyfifthBallon = By.xpath("/html/body/app-foundation-interface-chatbot/app-chatbot-root/app-chatbot-wrapper/div/div/app-chatbot-body/div/div/div[8]/app-chatbot-bubble/div[2]/span/div/div[2]/div/div[1]");
    By fortysixthBallon = By.xpath("/html/body/app-foundation-interface-chatbot/app-chatbot-root/app-chatbot-wrapper/div/div/app-chatbot-body/div/div/div[5]/app-chatbot-bubble/div[2]/span/div/div[2]/div/div[1]");
    By fortyseventhBallon = By.xpath("/html/body/app-foundation-interface-chatbot/app-chatbot-root/app-chatbot-wrapper/div/div/app-chatbot-body/div/div/div[6]/app-chatbot-bubble/div[2]/span/div/div[2]/div/div[1]");
    By fortyeityBallon = By.xpath("/html/body/app-foundation-interface-chatbot/app-chatbot-root/app-chatbot-wrapper/div/div/app-chatbot-body/div/div/div[7]/app-chatbot-bubble/div[2]/span/div/div/div");
    By fortyNineBallon = By.xpath("/html/body/app-foundation-interface-chatbot/app-chatbot-root/app-chatbot-wrapper/div/div/app-chatbot-body/div/div/div[8]/app-chatbot-bubble/div[2]/span/div/div/div");
    By fiftiethBallon = By.xpath("/html/body/app-foundation-interface-chatbot/app-chatbot-root/app-chatbot-wrapper/div/div/app-chatbot-body/div/div/div[5]/app-chatbot-bubble/div[2]/span/div/div[3]/div");
    By fifthfirst = By.xpath("/html/body/app-foundation-interface-chatbot/app-chatbot-root/app-chatbot-wrapper/div/div/app-chatbot-body/div/div/div[9]/app-chatbot-bubble/div[2]/span/div/div[1]/div/div[1]/div");
    By fifthsecond = By.xpath("/html/body/app-foundation-interface-chatbot/app-chatbot-root/app-chatbot-wrapper/div/div/app-chatbot-body/div/div/div[9]/app-chatbot-bubble/div[2]/span/div/div[2]/div/div[1]");
    //Button
    By buttonElement;


    By buttonDataAtraso;

    //Entradas
    By inputChatBotMinhaBV = By.xpath("/html/body/app-foundation-interface-chatbot/app-chatbot-root/app-chatbot-wrapper/div/div/app-chatbot-footer/div/input");
    By inputChatBotEVA = By.id("userInput");

    WebElement aux;
    WebElement valorEmAberto;
    WebElement mora;
    WebElement multa;
    WebElement juros;
    WebElement valorTotalApagar;
    WebElement dataDetalhamentoBoleto;

    By elementoTextual;

    //Datas vencimento
    By data1 = By.xpath("/html/body/app-foundation-interface-chatbot/app-chatbot-root/app-chatbot-wrapper/div/div/app-chatbot-body/div/div/div[6]/app-chatbot-bubble/div[2]/span/div/div[2]/div/div[2]/span[1]");
    By data2 = By.xpath("/html/body/app-foundation-interface-chatbot/app-chatbot-root/app-chatbot-wrapper/div/div/app-chatbot-body/div/div/div[6]/app-chatbot-bubble/div[2]/span/div/div[2]/div/div[2]/span[2]");
    By data3 = By.xpath("/html/body/app-foundation-interface-chatbot/app-chatbot-root/app-chatbot-wrapper/div/div/app-chatbot-body/div/div/div[6]/app-chatbot-bubble/div[2]/span/div/div[2]/div/div[2]/span[3]");
    By data4 = By.xpath("/html/body/app-foundation-interface-chatbot/app-chatbot-root/app-chatbot-wrapper/div/div/app-chatbot-body/div/div/div[6]/app-chatbot-bubble/div[2]/span/div/div[2]/div/div[2]/span[4]");

    //Composição parcela (Em atraso)
    By valorEmAberto1 = By.xpath("//*[@id=\"chatbot__content\"]/div[7]/app-chatbot-bubble/div[2]/span/div/div/div/div[1]/div/p[2]");
    By mora1 = By.xpath("//*[@id=\"chatbot__content\"]/div[7]/app-chatbot-bubble/div[2]/span/div/div/div/div[1]/div/p[3]");
    By multa1 = By.xpath("//*[@id=\"chatbot__content\"]/div[7]/app-chatbot-bubble/div[2]/span/div/div/div/div[1]/div/p[4]");
    By juros1 = By.xpath("//*[@id=\"chatbot__content\"]/div[7]/app-chatbot-bubble/div[2]/span/div/div/div/div[1]/div/p[5]");
    By valorTotalApagar1 = By.xpath("//*[@id=\"chatbot__content\"]/div[7]/app-chatbot-bubble/div[2]/span/div/div/div/div[1]/div/p[7]");

    //Composição parcela (Em atraso Envio)
    By envioValorEmAberto1 = By.xpath("//*[@id=\"chatbot__content\"]/div[6]/app-chatbot-bubble/div[2]/span/div/div/div/div[1]/div/p[2]");
    By envioMora1 = By.xpath("//*[@id=\"chatbot__content\"]/div[6]/app-chatbot-bubble/div[2]/span/div/div/div/div[1]/div/p[3]");
    By envioMulta1 = By.xpath("//*[@id=\"chatbot__content\"]/div[6]/app-chatbot-bubble/div[2]/span/div/div/div/div[1]/div/p[4]");
    By envioJuros1 = By.xpath("//*[@id=\"chatbot__content\"]/div[6]/app-chatbot-bubble/div[2]/span/div/div/div/div[1]/div/p[5]");
    By envioValorTotalApagar1 = By.xpath("//*[@id=\"chatbot__content\"]/div[6]/app-chatbot-bubble/div[2]/span/div/div/div/div[1]/div/p[7]");


    public void validaComposicaoBoleto(){
       waitElementAppeared(fortyeityBallon);
        valorEmAberto = getDriver().findElement(valorEmAberto1);
        mora = getDriver().findElement(mora1);
        multa = getDriver().findElement(multa1);
        juros = getDriver().findElement(juros1);
        valorTotalApagar = getDriver().findElement(valorTotalApagar1);

        System.out.println("Valor em Aberto extração: " +valorEmAberto.getText().substring(20,26));
        System.out.println("Mora extração: " +mora.getText().substring(9,17));
        System.out.println("Multa extração: " +multa.getText().substring(10,15));
        System.out.println("Juros extração: " +juros.getText().substring(10,16));
        System.out.println("Valor total a Pagar: " +valorTotalApagar.getText().substring(24,32));

//      Partiçao mora
        String mora31 = mora.getText().substring(8,10);
        String mora32 = mora.getText().substring(11,14);
        String mora33 = mora31 + mora32;

//     Partição valor total
        String valorTotalApagar31 = valorTotalApagar.getText().substring(23,25);
        String valorTotalApagar32 = valorTotalApagar.getText().substring(26,29);
        String valorTotalApagar33 = valorTotalApagar31+valorTotalApagar32;

//      Inteiros
        String valorEmAberto3 = valorEmAberto.getText().substring(20,23);
        String mora3 = mora33;
        String multa3 = multa.getText().substring(10,12);
        String juros3 = juros.getText().substring(10,13);
        String valorTotalApagar3 = valorTotalApagar33;

//      Decimal extraçao
        String valorEmAbertoDcm = valorEmAberto.getText().substring(24,26);
        String moraDcm = mora.getText().substring(15,17);
        String multaDcm = multa.getText().substring(13,15);
        String jurosDcm = juros.getText().substring(14,16);
        String valorTotalApargarDcm = valorTotalApagar.getText().substring(30,32);

//      String final
        String valorEmAbertoDcm2 = valorEmAberto3+"."+valorEmAbertoDcm;
        String moraDcm2 = mora3+"."+moraDcm;
        String multaDcm2 = multa3+"."+multaDcm;
        String jurosDcm2 = juros3+"."+jurosDcm;
        String valorTotalApagarDcm2 = valorTotalApagar3+"."+valorTotalApargarDcm;

//      ValorFinal Double
        Double valorEmAbertoFinal = Double.parseDouble(valorEmAbertoDcm2);
        Double moraFinal = Double.parseDouble(moraDcm2);
        Double multaFinal = Double.parseDouble(multaDcm2);
        Double jurosFinal = Double.parseDouble(jurosDcm2);
        Double valorTotalApagarDCM2 = Double.parseDouble(valorTotalApagarDcm2);

        Double totalComposicaoBoleto = valorEmAbertoFinal + moraFinal + multaFinal + jurosFinal;
        System.out.println("Valor Total Validado Boleto: " +totalComposicaoBoleto);
        Assert.assertEquals(valorTotalApagarDCM2,totalComposicaoBoleto);
    }

    public void validaComposicaoBoleto2(){
        waitElementAppeared(fortysecondBallon);
        valorEmAberto = getDriver().findElement(envioValorEmAberto1);
        mora = getDriver().findElement(envioMora1);
        multa = getDriver().findElement(envioMulta1);
        juros = getDriver().findElement(envioJuros1);
        valorTotalApagar = getDriver().findElement(envioValorTotalApagar1);

        System.out.println("Valor em Aberto extração: " +valorEmAberto.getText().substring(20,26));
        System.out.println("Mora extração: " +mora.getText().substring(9,14));
        System.out.println("Multa extração: " +multa.getText().substring(10,14));
        System.out.println("Juros extração: " +juros.getText().substring(10,16));
        System.out.println("Valor total a Pagar: " +valorTotalApagar.getText().substring(24,30));

////      Partiçao mora
//        String mora31 = mora.getText().substring(8,10);
//        String mora32 = mora.getText().substring(11,14);
//        String mora33 = mora31 + mora32;
//
////     Partição valor total
//        String valorTotalApagar31 = valorTotalApagar.getText().substring(23,25);
//        String valorTotalApagar32 = valorTotalApagar.getText().substring(26,29);
//        String valorTotalApagar33 = valorTotalApagar31+valorTotalApagar32;

//      Inteiros
        String valorEmAberto3 = valorEmAberto.getText().substring(20,23);
        String mora3 = mora.getText().substring(9,11);
        String multa3 = multa.getText().substring(10,11);
        String juros3 = juros.getText().substring(10,13);
        String valorTotalApagar3 = valorTotalApagar.getText().substring(24,27);

//      Decimal extraçao
        String valorEmAbertoDcm = valorEmAberto.getText().substring(24,26);
        String moraDcm = mora.getText().substring(12,14);
        String multaDcm = multa.getText().substring(12,14);
        String jurosDcm = juros.getText().substring(14,16);
        String valorTotalApargarDcm = valorTotalApagar.getText().substring(28,30);

//      String final
        String valorEmAbertoDcm2 = valorEmAberto3+"."+valorEmAbertoDcm;
        String moraDcm2 = mora3+"."+moraDcm;
        String multaDcm2 = multa3+"."+multaDcm;
        String jurosDcm2 = juros3+"."+jurosDcm;
        String valorTotalApagarDcm2 = valorTotalApagar3+"."+valorTotalApargarDcm;

//      ValorFinal Double
        Double valorEmAbertoFinal = Double.parseDouble(valorEmAbertoDcm2);
        Double moraFinal = Double.parseDouble(moraDcm2);
        Double multaFinal = Double.parseDouble(multaDcm2);
        Double jurosFinal = Double.parseDouble(jurosDcm2);
        Double valorTotalApagarDCM2 = Double.parseDouble(valorTotalApagarDcm2);


//        DecimalFormat totalComposicaoFinalDf = new DecimalFormat();
//        totalComposicaoFinalDf.format(000.00);
        Double totalComposicaoBoleto = valorEmAbertoFinal + moraFinal + multaFinal + jurosFinal;
//        String totalComposicaoBoletoDecimal = totalComposicaoFinalDf.format(totalComposicaoBoleto);
//        Double totalComposicaoBoletoDecimalFinal = Double.parseDouble(totalComposicaoBoletoDecimal);
        System.out.println("Valor Total Validado Boleto: " +totalComposicaoBoleto);
//        Assert.assertEquals(valorTotalApagarDCM2,totalComposicaoBoletoDecimalFinal);
    }


//    public void validaDataVecto(){
//        waitElementAppeared(data1);
//        aux = getDriver().findElement(data1);
//        System.out.println(aux.getText());
//        String[] dataSeparada = data1.toString().split("/");
//        int dia = Integer.parseInt(dataSeparada[0]);
//        int mes = Integer.parseInt(dataSeparada[1]);
//        int ano = Integer.parseInt(dataSeparada[2]);
////        if(dia > 0 && dia <= 31 && mes > 0 && mes <= 12 && ano >= 2022) {
////            validateConditionTrue("texto errado", aux.getText().contains(dia + "/" + mes + "/" + ano));
////        }
//        validateConditionTrue("texto errado", aux.getText().contains(dia + "/" + mes + "/" + ano));
//    }

    public void validaDataVecto(){
        waitElementAppeared(data1);
        aux = getDriver().findElement(data1);
        System.out.println("String data: "+aux.getText());
        String dataExtraida = aux.getText();
        String[] dataSeparada = aux.getText().toString().split("/");
        int diaInt = Integer.parseInt(dataSeparada[0]);
        int mesInt = Integer.parseInt(dataSeparada[1]);
        int anoInt = Integer.parseInt(dataSeparada[2]);
        String dia = String.valueOf(diaInt);
        String mes = String.valueOf(mesInt);
        String ano = String.valueOf(anoInt);
        String dataFinal = dia+mes+ano;
        SimpleDateFormat data = new SimpleDateFormat("dd/MM/yyyy");
        System.out.println("Data Validada: "+data.format(dataExtraida));
    }




    //MetodoRolarPagina
    public void rolarPaginaPagamento(){
       WebElement finalFluxo = getDriver().findElement(By.xpath("/html/body/app-foundation-interface-chatbot/" +
               "app-chatbot-root/app-chatbot-wrapper/div/div/app-chatbot-body/div/div/div[6]/app-chatbot" +
               "-bubble/div[2]/span/div/div[2]/div/div[2]/span[1]/app-chatbot-button/button"));
       new Actions(getDriver()).moveToElement(finalFluxo).perform();
        ;
    }

    public void rolarPaginaBoleto(){
        WebElement finalFluxo = getDriver().findElement(By.xpath("/html/body/app-foundation-interface-chatbot/app-chatbot-root" +
                "/app-chatbot-wrapper/div/div/app-chatbot-body/div/div/div[5]/app-chatbot-bubble/div[2]" +
                "/span/div/div[2]/div/div[2]/span[1]/app-chatbot-button/button"));
        new Actions(getDriver()).moveToElement(finalFluxo).perform();
        ;
    }

    public void rolarPaginaBoleto2(){
        WebElement finalFluxo = getDriver().findElement(By.xpath("/html/body/app-foundation-interface-chatbot/app-chatbot-root/app-chatbot" +
                "-wrapper/div/div/app-chatbot-body/div/div/div[5]/app-chatbot-bubble/div[2]/span/div/div[3]/div/div[2]/span[4]/app-chatbot" +
                "-button/button"));
        new Actions(getDriver()).moveToElement(finalFluxo).perform();
        ;
    }


    //Escrever campo
    public void escreverIntentMinhaBV(String intent) {
        sendTextElement(inputChatBotMinhaBV, intent);
    }

    //Apertar Tecla
    public void apertarEnterMinhaBV() {
        sendEnter(inputChatBotMinhaBV);
    }

    //Escrever campo
    public void escreverIntentEVA(String intent) {
        sendTextElement(inputChatBotEVA, intent);
    }

    //Apertar Tecla
    public void apertarEnterEVA() {
        sendEnter(inputChatBotEVA);
    }





    //Clicar botao
    public void clicarBotao(String button) {
        buttonElement = By.xpath("//button[contains(text(),'" + button + "')]");
        clickElement(buttonElement);
    }

    public void clicarElemento(String button) {
        buttonElement = By.xpath("//*[.='"+ button +"']");
        clickElement(buttonElement);
    }

    public void selecionarData(){
        buttonDataAtraso = By.xpath("//*[@id=\"chatbot__content\"]/div[6]/app-chatbot-bubble/div[2]/span/div/div[2]/div/div[2]/span[4]/app-chatbot-button/button");
        clickElement(buttonDataAtraso);
    }
    public void selecionarDataAtraso(){
        buttonDataAtraso = By.xpath("//*[@id=\"chatbot__content\"]/div[5]/app-chatbot-bubble/div[2]/span/div/div[3]/div/div[2]/span[4]/app-chatbot-button/button");
        clickElement(buttonDataAtraso);
    }

//Valida se data Vencimento do botão clicado é o mesmo do vencimento do boleto
    public void validarDataVectoBotao(){
     aux = getDriver().findElement(buttonDataAtraso);
     String dataBotaoAtrasado = aux.getText();
//     String dataDetalhamentoBoleto1 = dataDetalhamentoBoleto.getText().substring(12,22);
        System.out.println(dataBotaoAtrasado);
//        System.out.println(dataDetalhamentoBoleto1);
//     Assert.assertEquals(dataBotaoAtrasado,dataDetalhamentoBoleto1);

    }

// Validação de conteudo entrada de dados no método

    public void validarConteudo(By elemento, String texto){
        this.elementoTextual = elemento;
        waitElementAppeared(elemento);
        aux = getDriver().findElement(elemento);
        Assert.assertEquals(texto,aux.getText());
    }




//Validar balões de conteudo entrada de dados no script

    public void validarConteudoTerceiroBalao(String conteudo) {
        waitElementAppeared(thirdBallon);
        aux = getDriver().findElement(thirdBallon);
        System.out.println(aux.getText());
        validateConditionTrue("texto errado", aux.getText().contains(conteudo));
    }

    public void validarConteudoQuartoBalao(String conteudo) {
        waitElementAppeared(fourthBallon);
        aux = getDriver().findElement(fourthBallon);
        System.out.println(aux.getText());
        validateConditionTrue("texto errado", aux.getText().contains(conteudo));
    }

    public void validarConteudoQuintoBalao(String conteudo) {
        waitElementAppeared(fifthBallon);
        aux = getDriver().findElement(fifthBallon);
        System.out.println(aux.getText());
        validateConditionTrue("texto errado", aux.getText().contains(conteudo));
    }

    public void validarConteudoSextoBalao(String conteudo) {
        waitElementAppeared(sixthBallon);
        aux = getDriver().findElement(sixthBallon);
        System.out.println(aux.getText());
        validateConditionTrue("texto errado", aux.getText().contains(conteudo));
    }

    public void validarConteudoSetimoBalao(String conteudo) {
        waitElementAppeared(seventhBallon);
        aux = getDriver().findElement(seventhBallon);
        System.out.println(aux.getText());
        validateConditionTrue("texto errado", aux.getText().contains(conteudo));
    }

    public void validarConteudoOitavoBalao(String conteudo) {
        waitElementAppeared(eigththBallon);
        aux = getDriver().findElement(eigththBallon);
        System.out.println(aux.getText());
        validateConditionTrue("texto errado", aux.getText().contains(conteudo));
    }

    public void validarConteudoNonoBalao(String conteudo) {
        waitElementAppeared(ninthBallon);
        aux = getDriver().findElement(ninthBallon);
        System.out.println(aux.getText());
        validateConditionTrue("texto errado", aux.getText().contains(conteudo));
    }

    public void validarConteudoDecimoBalao(String conteudo) {
        waitElementAppeared(tenthBallon);
        aux = getDriver().findElement(tenthBallon);
        System.out.println(aux.getText());
        validateConditionTrue("texto errado", aux.getText().contains(conteudo));
    }

    public void validarConteudoDecimoPrimeiroBalao(String conteudo) {
        waitElementAppeared(eleventhBallon);
        aux = getDriver().findElement(eleventhBallon);
        System.out.println(aux.getText());
        validateConditionTrue("texto errado", aux.getText().contains(conteudo));
    }

    public void validarConteudoDecimoSegundoBalao(String conteudo) {
        waitElementAppeared(twelfthBallon);
        aux = getDriver().findElement(twelfthBallon);
        System.out.println(aux.getText());
        validateConditionTrue("texto errado", aux.getText().contains(conteudo));
    }

    public void validarConteudoDecimoTerceiroBalao(String conteudo) {
        waitElementAppeared(thirteenthBallon);
        aux = getDriver().findElement(thirteenthBallon);
        System.out.println(aux.getText());
        validateConditionTrue("texto errado", aux.getText().contains(conteudo));
    }

    public void validarConteudoDecimoQuartoBalao(String conteudo) {
        waitElementAppeared(fourteenthBallon);
        aux = getDriver().findElement(fourteenthBallon);
        System.out.println(aux.getText());
        validateConditionTrue("texto errado", aux.getText().contains(conteudo));
    }

    public void validarConteudoDecimoQuintoBalao(String conteudo) {
        waitElementAppeared(fifteenthBallon);
        aux = getDriver().findElement(fifteenthBallon);
        System.out.println(aux.getText());
        validateConditionTrue("texto errado", aux.getText().contains(conteudo));
    }

}
