<%-- 
    Document   : datsancomplete
    Created on : Nov 14, 2018, 10:13:51 AM
    Author     : TORIKU
--%>

<%@page import="Model.SuatDat"%>
<%@page import="DAO.DaoSan"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            DaoSan d1 = new DaoSan();
             for (SuatDat sd : d1.getShowSanTim()) {
                 d1.getDatSan(sd.getMaSan(), sd.getMaSuat(), sd.getNgay());
             }                 
          %>
          <a href="/QLSB/QLSB.jsp" ><p>Thanh cong</p></a>
    </body>
</html>
