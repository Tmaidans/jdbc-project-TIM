package com.cydeo.jdbctests.day2;

import org.junit.jupiter.api.Test;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class P01_ListOfMaps {

    //CONNECTION STRING
    String dbUrl = "jdbc:oracle:thin:@18.212.16.21:1521:XE";
    String dbUsername = "hr";
    String dbPassword = "hr";

    @Test
    public void task1() {

        Map<String, Object> rowMap1 = new HashMap<>();

        System.out.println("---------ROW MAP 1-----------");

        rowMap1.put("FIRST_NAME", "Steven");
        rowMap1.put("LAST_NAME", "King");
        rowMap1.put("SALARY", 24000);
        System.out.println(rowMap1);

        Map<String, Object> rowMap2 = new HashMap<>();

        System.out.println("---------ROW MAP 2-----------");

        rowMap2.put("FIRST_NAME", "Neena");
        rowMap2.put("LAST_NAME", "Kochhar");
        rowMap2.put("SALARY", 17000);
        System.out.println(rowMap2);

        System.out.println("--------------------------------------------------------------");
        List<Map<String, Object>> dataList = new ArrayList<>();

        //we will put each of the rowMaps into the list
        dataList.add(rowMap1);
        dataList.add(rowMap2);

        System.out.println(dataList);
        System.out.println(dataList.get(1).get("LAST_NAME"));


    }

    @Test
    public void task2() throws SQLException {

        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
        ResultSet rs = statement.executeQuery("select FIRST_NAME,LAST_NAME,SALARY FROM EMPLOYEES WHERE ROWNUM<6");
        ResultSetMetaData rsmd = rs.getMetaData();

        rs.next();//we need to move to first row to fill map 1
        Map<String, Object> rowMap1 = new HashMap<>();
        System.out.println("---------ROW MAP 1-----------");

        rowMap1.put(rsmd.getColumnName(1), rs.getString(1));
        rowMap1.put(rsmd.getColumnName(2), rs.getString(2));
        rowMap1.put(rsmd.getColumnName(3), rs.getString(3));
        System.out.println(rowMap1);

        rs.next();//moving to second row to get next set of data
        Map<String, Object> rowMap2 = new HashMap<>();
        System.out.println("---------ROW MAP 2-----------");

        rowMap2.put(rsmd.getColumnName(1), rs.getString(1));
        rowMap2.put(rsmd.getColumnName(2), rs.getString(2));
        rowMap2.put(rsmd.getColumnName(3), rs.getString(3));
        System.out.println(rowMap2);

        rs.next();//moving to second row to get next set of data
        Map<String, Object> rowMap3 = new HashMap<>();
        System.out.println("---------ROW MAP 3-----------");

        rowMap3.put(rsmd.getColumnName(1), rs.getString(1));
        rowMap3.put(rsmd.getColumnName(2), rs.getString(2));
        rowMap3.put(rsmd.getColumnName(3), rs.getString(3));
        System.out.println(rowMap3);

        System.out.println("--------------------------------------------------------------");
        List<Map<String, Object>> dataList = new ArrayList<>();

        //we will put each of the rowMaps into the list
        dataList.add(rowMap1);
        dataList.add(rowMap2);
        dataList.add(rowMap3);
        System.out.println(dataList);

        System.out.println(dataList.get(1).get("LAST_NAME"));

        //close connection
        rs.close();
        statement.close();
        conn.close();
    }

    @Test
    public void task3() throws SQLException {
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
        ResultSet rs = statement.executeQuery("select FIRST_NAME,LAST_NAME,SALARY FROM EMPLOYEES WHERE ROWNUM<6");
        ResultSetMetaData rsmd = rs.getMetaData();

        //create your list of maps to keep information
        List<Map<String, Object>> dataList = new ArrayList<>();

        //how many columns do we have?
        int columnCount = rsmd.getColumnCount();
        //iterate through each row
        while (rs.next()) {
            //create empty map to hold one row of information
            Map<String, Object> rowMap = new HashMap<>();
            //iterate each row dynamically to fill the map
            for (int i = 1; i <= columnCount; i++) {
                rowMap.put(rsmd.getColumnName(i), rs.getString(i));
            }

            //add one row of information to the list
            dataList.add(rowMap);

        }

        for (Map<String, Object> row : dataList) {
            System.out.println(row);
        }


        //close connection
        rs.close();
        statement.close();
        conn.close();
    }

}
