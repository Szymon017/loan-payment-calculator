<%-- 
    Document   : calc
    Created on : 26 paź 2023, 20:03:24
    Author     : Szymon
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<% 
   java.util.Date now = new java.util.Date();
   java.text.DateFormat dateFormat = new java.text.SimpleDateFormat("yyyy-MM-dd"); 
   String date = dateFormat.format(now);
%>
<!DOCTYPE html>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>JSP Page</title>
   </head>
   <body>
       <%
           Double wynik = 0.0;

           if (request.getMethod().equalsIgnoreCase("POST")) {
               String kwota = request.getParameter("kwota");
               String procent = request.getParameter("procent");
               String liczba_rat = request.getParameter("liczba_rat");
               if (!kwota.isEmpty() && !procent.isEmpty() && !liczba_rat.isEmpty()) {
                   double kwotaDouble = Double.parseDouble(kwota);
                   double procentDouble = Double.parseDouble(procent);
                   double liczbaRatDouble = Double.parseDouble(liczba_rat);
                   wynik = (kwotaDouble * procentDouble) / (1 - Math.pow((1 / (1 + procentDouble)), liczbaRatDouble));
               }
           }
       %>
      <p><%= date %></p>
      <h1>Kalkulator rat</h1>
      <form method="post" action="">
        <p>Kwota pożyczki: <input type="text" name="kwota" /></p>
        <p>Procent roczny: <input type="text" name="procent" /></p>
        <p>Liczba rat: <input type="text" name="liczba_rat" /></p>
        <p><input type="submit" /></p>
        <p><%= wynik %></p>
      </form>
   </body>
</html>
