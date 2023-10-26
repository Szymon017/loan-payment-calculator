<%-- 
    Document   : errorPage
    Created on : 26 paź 2023, 23:53:02
    Author     : Szymon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Wprowadzono błędne dane!</h2>
        <p>Pojawił się następujący błąd:
            <%= exception.getMessage() %>. <br />
        </p>
        <p><a href="calcwithbean.jsp">Powrót do kalkulatora</a></p>
    </body>
</html>
