<%--
    Document   : estadisticas
    Created on : 14/10/2021, 8:46:06 a. m.
    Author     : quasi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="tickets" class="Control.GestionTicket" scope="session"/>
<!DOCTYPE html>
<html>
  <head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/other.css">
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <%
      int areas[] = tickets.estadisticas();
    %>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['Area', 'Tickets por area'],
          ['Facturacion',     <%=areas[0]%>],
          ['Ventas',      <%=areas[1]%>],
          ['Desarrollo de software',  <%=areas[2]%>],
          ['Hardware', <%=areas[3]%>],
          ['Equipos',    <%=areas[4]%>],
          ['Servidores',    <%=areas[5]%>]
        ]);

        var options = {
          title: 'Porcentaje de tickets por area'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
    </script>
  </head>
  <body>
    <div class="container">
      <div class="tarjeta">
        <h1 style="text-align:center;">Grafico de areas y porcentaje</h1>
        <div id="piechart" style="width: 900px; height: 500px;"></div>
        <a class="regresar" href="../index.html">Regresar</a>
      </div>
    </div>
  </body>
</html>
