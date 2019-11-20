package ui_test.pages.excelReaderWriter;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import static java.lang.Integer.parseInt;

public class ExcelReaderWriter {
    public List<String> reader(String filePath, String fileName, String sheetName) throws IOException {
        List<String> headings = new ArrayList<>();

        System.out.println("File Path: " + filePath);
        System.out.println("File Name: " + fileName);
        System.out.println("Sheet Name: " + sheetName);
        File file = new File(filePath + File.separator + fileName);
        FileInputStream inputStream = new FileInputStream(file);
        Workbook workbook = null;
        String fileExtensionName = fileName.substring(fileName.indexOf("."));

        //Check condition if the file is xlsx file
        if (fileExtensionName.equals(".xlsx")) {
            //If it is xlsx file then create object of XSSFWorkbook class
            workbook = new XSSFWorkbook(inputStream);
        }
        //Check condition if the file is xls file
        else if (fileExtensionName.equals(".xls")) {
            //If it is xls file then create object of XSSFWorkbook class
            workbook = new HSSFWorkbook(inputStream);
        }

        Sheet sheet = workbook.getSheet(sheetName);
        int rowCount = sheet.getLastRowNum() - sheet.getFirstRowNum();

        Row row = sheet.getRow(0);

        //Top row storing in a List to create a hashmap for future
        for (int a = 0; row.getCell(a) != null; a++) {
            headings.add(row.getCell(a).getStringCellValue());
        }

        System.out.println("Listed Printed");
        for (int a = 0; a < headings.size(); a++) {
            System.out.print(headings.get(a) + " " + headings.indexOf(row.getCell(a).getStringCellValue()) + "|");
        }

        int rowindex = 0;
        for (int i = 0; i < rowCount + 1; i++) {
            row = sheet.getRow(i);
            for (int j = 0; j < row.getLastCellNum() && row.getCell(1) != null; j++) {
                //Print Excel data in console
                if (row.getCell(j).getCellType() == CellType.NUMERIC) {
                    System.out.print(row.getCell(j).getNumericCellValue() + " ");
                } else if (row.getCell(j).getCellType() == CellType.STRING) {
                    System.out.print(row.getCell(j).getStringCellValue() + " ");
                }
            }

            rowindex = i;
            if (row.getCell(1) == null) {
                break;
            }
            System.out.println();
        }

        headings.add(String.valueOf(rowindex));
        return headings;
    }

    public void writer(String filePath, String fileName, String sheetName, List<String> dataToWrite, int rowIndex) throws IOException {
        System.out.println("File Path: " + filePath);
        System.out.println("File Name: " + fileName);
        System.out.println("Sheet Name: " + sheetName);
        File file = new File(filePath + File.separator + fileName);
        FileInputStream inputStream = new FileInputStream(file);
        Workbook workbook = null;
        String fileExtensionName = fileName.substring(fileName.indexOf("."));

        //Check condition if the file is xlsx file
        if (fileExtensionName.equals(".xlsx")) {
            //If it is xlsx file then create object of XSSFWorkbook class
            workbook = new XSSFWorkbook(inputStream);
        }
        //Check condition if the file is xls file
        else if (fileExtensionName.equals(".xls")) {
            //If it is xls file then create object of XSSFWorkbook class
            workbook = new HSSFWorkbook(inputStream);
        }
        Sheet sheet = workbook.getSheet(sheetName);
        int rowCount = sheet.getLastRowNum() - sheet.getFirstRowNum();
        System.out.println(rowCount);
        Row row = sheet.getRow(0);
        Row newRow = sheet.createRow(rowIndex);
        for (int j = 0; j < rowIndex && j < dataToWrite.size(); j++) {
            //Fill data in row
            Cell cell = newRow.createCell(j);
            if (j == 0) {
                cell.setCellValue(parseInt(dataToWrite.get(j)));
            } else {
                cell.setCellValue(dataToWrite.get(j));
            }
            System.out.println("Cell: " + dataToWrite.get(j) + " index " + j);
        }
        inputStream.close();
        FileOutputStream outputStream = new FileOutputStream(file);
        workbook.write(outputStream);
        outputStream.close();
    }

    public List<String> matcher(List<String> headings, HashMap<String, String> data, int lineNumber) {

        List<String> dataList = new ArrayList<>();
        dataList.add(String.valueOf(lineNumber));
        for (int i = 1; i < headings.size(); i++) {
            if (data.containsKey(headings.get(i))) {
//                System.out.print("| Data in Map: "+data.get(headings.get(i))+", Data in List: "+headings.get(i));
                dataList.add(data.get(headings.get(i)));
            } else
                dataList.add("");
        }

        System.out.println("Size of List " + dataList.size());
        for (int i = 0; i < dataList.size(); i++) {
            System.out.print("Value:" + dataList.get(i) + "|");
        }

        return dataList;
    }

}
