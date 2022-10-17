<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="/navbar.jspf" %>
        <!-- O JSP é uam linguagem capaz de criar páginas WEB dinâmicas atravéz de códigos HTML -->
        <!-- Neste caso criei uma CALCULADORA em JSP para exemplificar o uso de código em JAVA dentro de uma página HTML -->
        <h1>Calculadora JSP</h1>

        <form action="calculadora.jsp" method="post">
            Número 1:<input type="text" name="n1"/><br>
            Número 2:<input type="text" name="n2"/><br>
            Operação:
            <select name="op">
                <option value="+">+</option>
                <option value="-">-</option>
                <option value="x">x</option>
                <option value="/">/</option>
            </select><br>
            <input type="submit" value="Enviar"/>
        </form>
        
    </body>
</html>
