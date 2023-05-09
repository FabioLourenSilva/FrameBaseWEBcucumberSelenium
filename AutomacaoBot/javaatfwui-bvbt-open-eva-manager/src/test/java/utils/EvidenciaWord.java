package utils;

import io.cucumber.java.Scenario;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.util.Units;
import org.apache.poi.wp.usermodel.HeaderFooterType;
import org.apache.poi.xwpf.usermodel.*;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblWidth;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STTblWidth;

import java.io.*;
import java.math.BigInteger;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class EvidenciaWord {

    private static XWPFDocument documentoWord;
    private static XWPFParagraph paragrafoWord;
    private static XWPFTable tabelaWord;
    private static XWPFRun run;
    public static int contador = 1;
    //New
    private static XWPFTableRow row = null;
    private static boolean tableexists = false;

    public EvidenciaWord() {
        documentoWord = new XWPFDocument();
    }

    public void criaParagrafo() {
        paragrafoWord = documentoWord.createParagraph();
        run = paragrafoWord.createRun();
    }

    public void criaTabela() {
//        tabelaWord = documentoWord.createTable();
//        tabelaWord.setTableAlignment(TableRowAlign.CENTER);
//        tabelaWord.setWidth(8000);

        tabelaWord = documentoWord.createTable();
        CTTblWidth width = tabelaWord.getCTTbl().addNewTblPr().addNewTblW();
        width.setType(STTblWidth.DXA);
        width.setW(BigInteger.valueOf(9000));
    }


    public void anexarEvidenciaWord(String evidencia, Scenario scenario) {
        try {
            criaParagrafo();
            paragrafoWord.setAlignment(ParagraphAlignment.CENTER);
            InputStream screenshot = new FileInputStream(evidencia);
            run.addPicture(screenshot, Document.PICTURE_TYPE_PNG, scenario.getName(), Units.toEMU(300), Units.toEMU(400));
            run.addBreak();
        } catch (IOException | InvalidFormatException ex) {
            ex.printStackTrace();
        }

    }

    public void salvarDocumentoWord(String nomeDocumento) {
        try {
            OutputStream documentoFinalWord = new FileOutputStream("evidenciasWord/" + nomeDocumento + ".docx");
            documentoWord.write(documentoFinalWord);
            documentoWord.close();
        } catch (IOException ex) {
            ex.printStackTrace();
        }

    }

    //New

    public void criarCabecalho() {
        XWPFHeader header = documentoWord.createHeader(HeaderFooterType.FIRST);
        paragrafoWord = header.createParagraph();
        paragrafoWord.setAlignment(ParagraphAlignment.CENTER);
        run = paragrafoWord.createRun();
//        run.setText("Evidence of Testing");
        run.setBold(true);
        run.setFontSize(20);

        run = paragrafoWord.createRun();
        try {
            EvidenciaWord.gravarImagemCabecalho(run, paragrafoWord,"Logo_Banco_BV", "Left", 100,75);
            run.setText("     " + "     Evidence Testing     " + "       ");
            run.setBold(true);
            run.setFontSize(20);
            EvidenciaWord.gravarImagemCabecalho(run, paragrafoWord,"everisLogo", "Right", 100,100);
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    public static void criaLinhaTabela(String title, String description) {
        if (!tableexists) {
            row = tabelaWord.getRow(0);
            paragrafoWord = row.getCell(0).getParagraphArray(0);
            tableText(paragrafoWord.createRun(), 12, true, title);
            row.addNewTableCell();
            paragrafoWord = row.getCell(1).getParagraphArray(0);
            tableText(paragrafoWord.createRun(), 12, false, description);
            tableexists = true;
        } else {
            row = tabelaWord.createRow();
            paragrafoWord = row.getCell(0).getParagraphArray(0);
            tableText(paragrafoWord.createRun(), 12, true, title);
            paragrafoWord = row.getCell(1).getParagraphArray(0);
            tableText(paragrafoWord.createRun(), 12, false, description);
        }
    }

    public static void tableText(XWPFRun run, int size, boolean bold, String title) {
        run.setText(title);
        run.setBold(bold);
        run.setFontSize(size);
    }

    public static void createText(boolean bold, int size) throws InvalidFormatException, IOException {
        paragrafoWord = documentoWord.createParagraph();
        run = paragrafoWord.createRun();
//        run.setText("Step "+contador+". ");
        contador++;
        run.setBold(bold);
        run.setFontSize(size);
    }

    public String pegarData() {
        DateFormat dateformat = new SimpleDateFormat("dd/MM/yyyy");
        Date date = new Date();
        return dateformat.format(date);
    }

    public static void gravarImagemCabecalho(XWPFRun _run, XWPFParagraph _paragrafo,String arquivo, String direction,int largura, int altura) throws Exception, IOException {

        String filePath = "files/" + arquivo + ".png";
        //XWPFHeader header = document.createHeader(HeaderFooterType.DEFAULT);
        //paragrafo = header.createParagraph();
        //paragrafo.setAlignment(ParagraphAlignment.RIGHT);
        if (direction == "Right") {
            paragrafoWord.setAlignment(ParagraphAlignment.RIGHT);
        }else if (direction == "Left") {
            paragrafoWord.setAlignment(ParagraphAlignment.LEFT);
        } else if (direction == "Center") {
            paragrafoWord.setAlignment(ParagraphAlignment.CENTER);
        }

        //_run = paragrafo.createRun();
        _run.addPicture(new FileInputStream(filePath), XWPFDocument.PICTURE_TYPE_PNG,
                filePath, Units.toEMU(largura), Units.toEMU(altura));
    }


}
