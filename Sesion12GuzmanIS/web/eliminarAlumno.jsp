<%-- 
    Document   : eliminarAlumno
    Created on : 4 nov. 2025, 8:18:42
    Author     : PC-11
--%>

<%@include file="conexion.jsp"%>
<%
int numeroCodigo=Integer.parseInt(request.getParameter("id_usuario"));
PreparedStatement ps;
ps=conexion.prepareCall("DELETE from tusuarios WHERE id_usuario = '"+numeroCodigo+"'");
       ps.executeUpdate();
       response.sendRedirect("index.jsp");
%>
