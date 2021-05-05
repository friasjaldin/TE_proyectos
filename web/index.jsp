<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.ArrayList" %>
<%@page import="com.emergentes.modelo.Tarea" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
ArrayList<Tarea> lista = (ArrayList<Tarea>) request.getAttribute("lista");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TAREAS</title>
    </head>
    <body>
        <h1>Listado de TAREAS</h1>
        <p><a href="MainController?op=nuevo">Nuevo</a></p>
           <table border="0" style="margin: 0 auto;" bgcolor="FF6406" >
        <td rowspan="20"> </tr>
        <tr><td><b>PRACTICA 4 EMERGENTES 2  </b></td>  
        <tr><td><b>Nombre:  </b></td> <td>Cristhian Jaime Frias Jaldin</td> 
        <tr><td><b>Ci:  </b></td> <td >10072610 lp</td>
         <tr><td><b>email:  </b></td> <td>friasyoyo@gmail.com </td> 
        <tr><td><b>celular|whatsapp:  </b></td> <td>60122932 </td>
       </table>
         <table border="1">
            <tr>
                <th>Id</th>
                <th>Tarea</th>
                <th>Prioridad</th>
                <th>Completado</th>
                <th>Editar</th>
                <th>Eliminar</<th>
            </tr>
            <c:forEach var="item" items="${lista}">
                
                    <td>${item.id}</td>
                    <td>${item.tarea}</td>
                    <td>
                        <c:if test="${item.prioridad == 1 }">Baja</c:if>
                        <c:if test="${item.prioridad == 2 }">Media</c:if>
                        <c:if test="${item.prioridad == 3 }">Alta</c:if>
                        </td>
                        <td>
                        <c:if test="${item.completado == 1 }"><input type="checkbox" checked onclick="javascript: return false;"></c:if>
                        <c:if test="${item.completado == 2 }"><input type="checkbox"  onclick="javascript: return false;"></c:if>
                        </td>
                        <td><a href="MainController?op=editar&id=${item.id}">Editar</a></td>
                    <td><a href="MainController?op=eliminar&id=${item.id}">Eliminar</a></td>
                
            </c:forEach>
           </table>
    </body>
</html>


