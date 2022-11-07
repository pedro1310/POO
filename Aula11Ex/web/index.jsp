<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>
            <%
            String errorMessage = null;
            boolean hasParameterN = request.getParameter("n") != null;
            double n=0;
            try{
                n = Integer.parseInt(request.getParameter("n"));
            }catch(Exception ex){
                errorMessage = ex.getMessage();
            }
        %>
        
        <h1>Digite a tabuada desejada...</h1>
        
        <div>
            <% if(hasParameterN && errorMessage != null) { %>
                <div style="color:red"><%= errorMessage %></div>
            <% } %>
            <% if(hasParameterN){ %>
                <table>
                    <% for(int i=1; i<=10; i++) { %>
                        <tr>
                            <td><%= n %></td>
                            <td>x <%= i %></td>
                            <td>= <%= (n*i) %></td>
                        </tr>
                    <% } %>
                </table>
            <% } %>
            <form>
                <input type="number" name="n"/>
                <input type="submit" name="gerar" value="Gerar"/>
            </form>
        </div>
            <br>
        <%@include file="WEB-INF/jspf/footer.jspf"%>
    </body>
</html>