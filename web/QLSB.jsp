<%-- 
    Document   : QLSB
    Created on : Oct 17, 2018, 12:15:39 PM
    Author     : Admin
--%>

<%@page import="java.sql.Date"%>
<%@page import="Model.SuatDat"%>
<%@page import="Model.San"%>
<%@page import="DAO.DaoSan"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <html lang="en">
                <head>
                    <meta charset="UTF-8">
                        <title>Đặt sân online</title>

                        <link rel="stylesheet" href="styles.css">
                            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
                                <link href="https://fonts.googleapis.com/css?family=Petit+Formal+Script" rel="stylesheet">
                                    <link href="https://fonts.googleapis.com/css?family=Vollkorn" rel="stylesheet">
                                        <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
                                        <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
                                        <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>

                                        <script>
                                            $(document).ready(
                                                    function () {
                                                        $("#datepicker").datepicker({
                                                            dateFormat: 'yy-mm-dd',
                                                            changeMonth: false, //Tùy chọn này cho phép người dùng chọn tháng
                                                            changeYear: false //Tùy chọn này cho phép người dùng lựa chọn từ phạm vi năm
                                                        });
                                                        var a = $('input#datepicker').val();
                                                        console.log(a);
                                                    }
                                            );
                                        </script>

                                        </head>
                                        <body>
                                            
                                            <div id="header">
                                                        <div class="left logo">
                                                            <a href="http://asdteam.com/" title="Trang chủ">
                                                                <img alt="asdteam.com" title="asdteam.com" src="./img/logo.png">
                                                            </a>
                                                        </div>
                                                        <div class="right logo">
                                                            <a href="http://asdteam.com/" title="Trang chủ">
                                                                <img alt="asdteam.com" title="asdteam.com" src="./img/asdfinal.png">
                                                            </a>
                                                           <button class="btn"><a href="login.jsp"><span>Đăng Nhập</span></a></button>
                                                        </div>	
                                                        <div class="clear"></div>
                                                    </div>
                                            <form action=DatSan.jsp method="POST">
                                                <%DaoSan ds = new DaoSan();%>   
                                                <div id="page">
                                                    
                                                    <div class="main-menu">
                                                        <div id="navigate">
                                                            <div id="navigate-datsan">
                                                                <form id="ndatsan">
                                                                    <table id="tableds">
                                                                        <tr>
                                                                            <td colspan="2">
                                                                                Đặt sân online
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                                Chọn loại sân
                                                                            </td>
                                                                            <td>
                                                                                Chọn ngày
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                                <select name="chonsan">
                                                                                    <%for (San s : ds.getSan()) {%>
                                                                                    <option><%=s.getLoaiSan()%></option>
                                                                                    <%}%>
                                                                                </select>
                                                                            </td>
                                                                            <td>
                                                                                <p><input type="text" size="8" name="datepicker" id="datepicker" /></p>	
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="2">
                                                                                Giờ đặt
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="2">
                                                                                <select name="giodat">
                                                                                    <option >Chọn giờ đặt</option>
                                                                                    <option value="1">1</option>
                                                                                    <option value="2">2</option>
                                                                                    <option value="3">3</option>
                                                                                    <option value="4">4</option>
                                                                                </select>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="2">
                                                                                <br>
                                                                                    <input class="btn_sub" type="submit" value="Tìm sân">
                                                                                        </td>
                                                                                        </tr>

                                                                                        </table>
  
  

                                                                               
                                                                                        </form>
                                                                                        </div>

                                                                                        <div id="navigate-content">
                                                                                            <b>
                                                                                                <h1 id="ct1">
                                                                                                    Sân Bóng Đá Mini Online
                                                                                                </h1>
                                                                                                <h1>
                                                                                                    Nhanh Chóng Và Dễ Dàng
                                                                                                </h1>
                                                                                            </b>
                                                                                        </div>
                                                                                        </div>

                                                                                        </div>
                                                                                        <div id="footer">
                                                                                            <div class="container">	
                                                                                                <div class="ft-content">
                                                                                                    <h3>ASD cam kết cho bạn một trải nghiệm sân tốt nhất</h3>
                                                                                                    <h3>Liên hệ: 0968 116 879</h3>
                                                                                                </div>
                                                                                                <div class="social">
                                                                                                    <div class="social-item ist">
                                                                                                        <i class="fa fa-instagram"></i>
                                                                                                    </div>

                                                                                                    <div class="social-item fb">
                                                                                                        <i class="fa fa-facebook"></i>
                                                                                                    </div>

                                                                                                    <div class="social-item tw">
                                                                                                        <i class="fa fa-twitter"></i>
                                                                                                    </div>

                                                                                                    <div class="social-item yt">
                                                                                                        <i class="fa fa-youtube-play"></i>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        </div>
                                                                                        </body>
                                                                                        </html>
