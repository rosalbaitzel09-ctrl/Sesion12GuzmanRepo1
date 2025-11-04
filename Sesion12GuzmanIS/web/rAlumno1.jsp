<%-- 
    Document   : rAlumno1
    Created on : 4 nov. 2025, 7:50:53
    Author     : PC-11
--%>

<%@include file="conexion.jsp"%>   
               <%
    //int matr=Integer.parseInt(request.getParameter("Matricula"));
    String usuario=request.getParameter("usuario");
    String contrase=request.getParameter("contrase"); 
    //String fusURL=matr+".jpg"; //URL DE FOTO
    //String matriculaID=String.valueOf(matr);
    st=conexion.prepareStatement("INSERT INTO tusuarios values (null,?,?)");
    //st.setInt(1, matr);
    st.setString(1, usuario);
    st.setString(2, contrase);
    st.execute();
    conexion.close();
    response.sendRedirect("principal.jsp");
        out.println("<meta http-equiv='refresh' content='0;url=menu.jsp'"); //actualizar pagina
        
%>