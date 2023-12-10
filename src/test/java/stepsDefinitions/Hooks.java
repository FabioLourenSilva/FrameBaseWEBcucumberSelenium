package stepsDefinitions;

import core.DriverFactory;
import io.cucumber.core.backend.StepDefinition;
import io.cucumber.core.gherkin.messages.internal.gherkin.Gherkin;
import io.cucumber.java.*;
import io.cucumber.junit.Cucumber;
import io.cucumber.plugin.event.PickleStepTestStep;
import io.cucumber.plugin.event.TestCase;
import org.apache.commons.io.FileUtils;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import utils.EvidenciaWord;

import java.awt.*;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Field;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

public class Hooks extends DriverFactory {

    EvidenciaWord evidenciaWord = new EvidenciaWord();


    @Before
    public void startDriver() {
        createDriver();
    }

    @AfterStep
    public void takeScreenshot(Scenario scenario) {
        byte[] screenshot = ((TakesScreenshot) getDriver()).getScreenshotAs(OutputType.BYTES);
        scenario.attach(screenshot, "image/png", scenario.getName());
    }

    @After
    public void cleanDriver() {
//        salvarDocWord();
        getDriver().quit();
    }

    @Before
    public void instanciaDriver(Scenario scenario) {
//        estruturarWord(scenario);
        getDriver();
    }
    //****Evidencia em word****//

//    @AfterStep
    public void takeScreenshotWord(Scenario scenario) throws IOException, AWTException {
        System.out.println(scenario.getName());
        try {
            evidenciaWord.createText(true, 12);
        } catch (InvalidFormatException e) {
            e.printStackTrace();
        }
        SimpleDateFormat formatoDeData = new SimpleDateFormat("yyyyMMdd-HHmmss-SSS");
        String fileName = formatoDeData.format(new Date());
        String shotName = String.format("%s.png", fileName);
        File finalShotFile = new File("evidenciasWord", shotName);
        File shotFile = ((TakesScreenshot) getDriver()).getScreenshotAs(OutputType.FILE);
        FileUtils.copyFile(shotFile, finalShotFile);
        evidenciaWord.anexarEvidenciaWord("evidenciasWord/" + shotName, scenario);
    }

    public void estruturarWord(Scenario scenario) {
        evidenciaWord.criarCabecalho();
        evidenciaWord.criaTabela();
        evidenciaWord.criaLinhaTabela("Nome do cenário", scenario.getName());
        evidenciaWord.criaLinhaTabela("Status", scenario.getStatus().toString());
        evidenciaWord.criaLinhaTabela("Feature", scenario.getSourceTagNames().toString().replaceAll("[^\\w.]", ""));
        evidenciaWord.criaLinhaTabela("Data", evidenciaWord.pegarData());
    }

    public void salvarDocWord() {
        evidenciaWord.salvarDocumentoWord("evidencia-word");
    }

}
