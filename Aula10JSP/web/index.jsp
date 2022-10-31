<%-- 
    Document   : index
    Created on : 31 de out de 2022, 13:50:10
    Author     : Fatec
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page 1</title>
    </head>
    <body>
        <h1>Página JSP 1</h1>
        <h2>
            <%
                Date agora = new Date();
                out.println("Data: " + agora);
            %>
        </h2>
    </body>
</html>