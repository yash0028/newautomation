package ui_test.page.pagehelpers;

import java.util.ArrayList;

@Deprecated
public class ExcelUtility_old {

    public Object[][] getData(ExcelReader workbook, String worksheet) {

        return workbook.retrieveTestData(worksheet);
    }

    public boolean writeResult(ExcelReader workbook, String worksheet, String colName, String testCase, String result) {

        return workbook.setCellData(worksheet, colName, testCase, result);
    }

    public boolean getToRunFlag(ExcelReader workbook, String worksheet, String testCase) {
        if (workbook.retrieveToRunFlag(worksheet, "flag", testCase).equalsIgnoreCase("y")) {

            return true;
        } else {

            return false;
        }

    }

    public ArrayList<ArrayList<Object>> getDataAsArrayList(ExcelReader workbook, String worksheet) {

        return workbook.retrieveTestDataAsArrayList(worksheet);
    }
}
