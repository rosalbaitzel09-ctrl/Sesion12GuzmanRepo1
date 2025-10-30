<%-- 
    Document   : conexion
    Created on : 30 oct. 2025, 7:59:01
    Author     : PC-11
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*" %>

<%
       Connection conexion=null; //variable de conexion a BD
       PreparedStatement st=null; //variable que ejecuta sentencias SQL
       ResultSet rs=null; //variable de resultado final de datos 
    
       Class.forName("com.mysql.jdbc.Driver"); //integracion de driver de conexion MYSQL A JAVA
       conexion=DriverManager.getConnection("jdbc:mysql://localhost:3306/bdjavaweb2","root",""); //Datos de conexion 

%>