<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- Neste código eu incluo uma navbar.jspf criada separadamente -->
        <%@include file="navbar.jspf" %>
        <h1>Calculadora JSP - Resultado</h1>
        
        <h2>
            <%
                int n1 = Integer.parseInt(request.getParameter("n1"));
                int n2 = Integer.parseInt(request.getParameter("n2"));
                String op = request.getParameter("op");
                double conta = 0;

                switch(op){
                    case "+":
                        conta = n1 + n2;
                        out.println(n1 + " + " + n2 + " = " + conta);
                        break;
                    case "-":
                        conta = n1 - n2;
                        out.println(n1 + " - " + n2 + " = " + conta);
                        break;
                    case "x":
                        conta = n1 * n2;
                        out.println(n1 + " x " + n2 + " = " + conta);
                        break;
                    case "/":
                        conta = n1 / n2;
                        out.println(n1 + " / " + n2 + " = " + conta);
                        break;
                    default:
                        out.println("Operação Inválida!");
                }
            %>
        </h2>
    </body>
</html>
