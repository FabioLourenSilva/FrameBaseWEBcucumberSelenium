package runner;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        features = "features",
        glue = "stepsDefinitions",
        tags = "@MODALTEST1",
        dryRun = false,
        plugin = {"pretty", "html:evidencias/evidenciaProjectBase-08-12.html"}
)

public class TestRunner {

}