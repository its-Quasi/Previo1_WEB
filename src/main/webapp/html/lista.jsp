<%--
    Document   : lista
    Created on : 14/10/2021, 8:15:27 a. m.
    Author     : quasi
--%>
<%@page import="Modelo.Ticket"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="tickets" class="Control.GestionTicket" scope="session"/>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/dataTables.bootstrap5.min.css">
      <link rel="stylesheet" href="../css/other.css">
  </head>
  <div class="container">
    <body>
      <h1 style="text-align:center; margin-bottom: 30px;">Bienvenido al listado de tickets</h1>
      <table id="ticks" class="table table-striped" style="width:100%">
        <thead>
          <tr>
            <th>Id</th>
            <th>Asunto</th>
            <th>Area</th>
            <th>Prioridad</th>
          </tr>
        </thead>
        <tbody>
          <%
          for(Ticket t : tickets.getTickets()){
            %>
            <tr>
              <td><%= t.getId() %></td>
              <td><%= t.getAsunto() %></td>
              <td> <%= t.getAreaTxt() %> </td>
              <td><%= t.getPrioridad() %></td>
            </tr>
            <%
          }
          %>
        </tbody>
      </table>
      <a class = "regresar" href="../index.html">Regresar</a>
      <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
      <script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
      <script src="https://cdn.datatables.net/1.11.3/js/dataTables.bootstrap5.min.js"></script>
      <script type="text/javascript">
      $(document).ready(function() {
        $('#ticks').DataTable();
      } );
      </script>

    </body>
  </div>
</html>
