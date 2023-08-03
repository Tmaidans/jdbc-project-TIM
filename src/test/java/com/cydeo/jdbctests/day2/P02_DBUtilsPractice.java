package com.cydeo.jdbctests.day2;

import com.cydeo.jdbctests.utility.DB_Util;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class P02_DBUtilsPractice {

    @Test
    public void task1() {
        //Create connection
        DB_Util.createConnection();

        //run query
        DB_Util.runQuery("select first_name, last_name, salary from employees");

        //ret result
        System.out.println();
        System.out.println("===Get me first row first column===");
        System.out.println(DB_Util.getFirstRowFirstColumn());

        System.out.println();
        System.out.println("===Get me all column names===");
        System.out.println(DB_Util.getAllColumnNamesAsList());

        System.out.println();
        System.out.println("===Get me all first names===");
        System.out.println(DB_Util.getColumnDataAsList("first_name"));

        System.out.println();
        System.out.println("===Get me how many rows we have===");
        System.out.println(DB_Util.getRowCount());

        System.out.println();
        System.out.println("===Get me certain row info===");
        System.out.println("===Get me as list===");
        System.out.println(DB_Util.getRowDataAsList(2));
        System.out.println("===Get me as map===");
        System.out.println(DB_Util.getRowMap(2));

        System.out.println("===Get me data a list of maps===");
        List<Map<String, String>> allRowAsListOfMap = DB_Util.getAllRowAsListOfMap();

        for (Map<String, String> rowMap : allRowAsListOfMap) {
            System.out.println(rowMap);
        }


        //close connection
        DB_Util.destroy();

    }
}
