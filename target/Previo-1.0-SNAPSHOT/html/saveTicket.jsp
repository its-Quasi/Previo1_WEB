<%--
    Document   : saveTicket
    Created on : 14/10/2021, 7:09:30 a. m.
    Author     : quasi
--%>

<%@page import="Modelo.Ticket"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="tickets" class="Control.GestionTicket" scope="session"/>
<!DOCTYPE html>

<%
  String id = request.getParameter("identificador");
  String nombre = request.getParameter("nombre");
  String apellido = request.getParameter("apellido");
  String asunto = request.getParameter("asunto");
  int prioridad = Integer.parseInt(request.getParameter("prioridad"));
  int area = Integer.parseInt(request.getParameter("area"));
  Ticket t = new Ticket(id, nombre, apellido, asunto, prioridad, area);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
          if(tickets.agregarTicket(t)){
        %>
        <h1>Su ticket ha sido agregado con exito</h1>
        <h3>Informacion de su ticket:</h3>
        <table border = 1>
          <th>Id</th>
          <th>Usuario</th>
          <th>Area</th>
          <tr>
            <td> <%=id%> </td>
            <td> <%=nombre + " " + apellido%> </td>
            <td> <%=area%> </td>
          </tr>
        </table>
        <%
          }else{
        %>
        <h1>No pudimos agregar su ticket :(</h1>
         <%
           }
        %>

        <a href="../index.html">Regresar</a>
    </body>
</html>
