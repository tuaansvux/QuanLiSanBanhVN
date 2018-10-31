<%-- 
    Document   : newjsp
    Created on : Oct 24, 2018, 9:20:24 AM
    Author     : Admin
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
//      String san =  request.getParameter("chonsan");                                                                          
//      String date = String.valueOf(request.getParameter("datepicker"));
//      String gio = request.getParameter("chongio");
//            String loaisan = "";
//            if (request.getParameter("chonsan") != null) {
//                loaisan = request.getParameter("chonsan");
//            }
//            String date = "";
//            if (request.getParameter("datepicker") != null) {
//                loaisan = request.getParameter("datepicker");
//            }
//            String suat = "";
//            if (request.getParameter("chongio") != null) {
//                loaisan = request.getParameter("chongio");
//            }
            DaoSan d = new DaoSan();
             d.getTimSan(request.getParameter("chonsan"),request.getParameter("datepicker"),request.getParameter("giodat"));
            //d.getTimSan("San 5", "2018-09-14", "2");
            for (SuatDat sd : d.getShowSanTim()) {
        %>
<!--        <h1><%=request.getParameter("datepicker")%></h1>
        <h1><%=request.getParameter("giodat")%></h1>
        <h1><%=request.getParameter("chonsan")%></h1>-->
        <h1><%=sd.getMaSan()%></h1>
        <%}%>
    </body>
</html>
