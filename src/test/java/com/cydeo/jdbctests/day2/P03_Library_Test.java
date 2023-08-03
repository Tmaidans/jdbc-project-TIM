package com.cydeo.jdbctests.day2;

import com.cydeo.jdbctests.utility.DB_Util;
import org.junit.jupiter.api.Test;

public class P03_Library_Test {

    //CONNECTION STRING
    String dbUrl = "jdbc:mysql://34.230.35.214:3306/library2";
    String dbUsername ="library2_client";
    String dbPassword = "6s2LQQTjBcGFfDhY";

    @Test
    public void task1(){
        //create connection
        DB_Util.createConnection(dbUrl,dbUsername,dbPassword);

        //rub query
        DB_Util.runQuery("select count(*) from books");
        String booksCount = DB_Util.getFirstRowFirstColumn();
        System.out.println("booksCount = " + booksCount);

        //close connection
        DB_Util.destroy();

    }

}
