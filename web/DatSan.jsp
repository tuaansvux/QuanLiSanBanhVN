<%@page import="Model.SuatDat"%>
<%@page import="DAO.DaoSan"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset ="UTF-8">
        <title>Page Title</title>
    </head>


    <link rel="stylesheet" type="text/css"  href="style.css">

    <body>
        <div class="layout">
            <div class="header">
                <div class="Logo">
                    <a href="#">
                        <img src="images/inc/img1.PNG">
                    </a>
                </div>

                <div class="Logo-middle">
                    <img src="images/inc/Logo-2.png">
                </div>

                <div class="Login">
                    <a href="#">
                        <p>Đăng nhập</p>
                    </a>
                </div>

                <div class="clear"></div>

            </div>

            <div class="bottom">
                <div class="bottom-left">
                    <ul>
                        <li>
                            <a href="#"><p>Thông tin sân</p></a>
                        </li>
                        <li>
                            <a href="#"><p>Lịch sử hình thành</p></a>
                        </li>
                        <li>
                            <a href="#"><p>Nội qui đặt sân</p></a>
                        </li>
                        <!--					<li>
                                                                        <a href="#"><p>ASD đẹp trai</p></a>
                                                                </li>-->
                    </ul>

                </div>

                <div class="bottom-right">
                    <div class="top-bottom-right">
                        <div class="top1-right">
                            <ul>
                                <li>
                                    <p>Tên</p>
                                    <div class="box">
                                        <input type="text" name="NameUser">
                                    </div>
                                </li>
                                <li>
                                    <p>Địa chỉ</p>
                                    <div class="box">
                                        <input type="text" name="Address">
                                    </div>
                                </li>
                                <li>
                                    <p>Số điện thoại</p>
                                    <div class="box">
                                        <input type="text" name="Phone">
                                    </div>
                                </li>
                                <li>
                                    <p>Đặt cọc</p>
                                    <div class="box">
                                        <input type="text" name="Book">
                                    </div>
                                </li>

                            </ul>
                        </div>

                        <div class="midle-right">
                            <p>Lưu ý : Nên đọc nội  qui trước khi đặt sân </p>
                        </div>

                        <div class="bottom1-right">
                            <ul>
                                <%
                                    DaoSan d = new DaoSan();
                                    d.getTimSan(request.getParameter("chonsan"), request.getParameter("datepicker"), request.getParameter("giodat"));
                                    //d.getTimSan("San 5", "2018-09-14", "2");
                                    for (SuatDat sd : d.getShowSanTim()) {
                                %>

                                <li>
                                    <p>Loại sân</p>
                                    <input type="text" name="Masan" value=<%=sd.getMaSan()%>>
                                </li>

                                <li>
                                    <p>Ngày</p>
                                    <input type="text" name="Date" value=<%=sd.getNgay()%>>
                                </li>

                                <li>
                                    <p>Giờ đặt</p>
                                    <input type="text" name="Hour" value=<%=sd.getMaSuat()%>>
                                </li>
                                <%}%>
                            </ul>
                        </div>

                    </div>

                    <div class="end-right">
                        <ul>
                            <li>
                                <a href="#"><p>Hủy</p></a>
                            </li>

                            <li>
                                <a href="#"><p>Xác nhận</p></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>
