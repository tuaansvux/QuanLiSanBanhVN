<%-- 
    Document   : home
    Created on : Sep 24, 2018, 8:50:46 PM
    Author     : TORIKU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="css/home.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="https://fonts.googleapis.com/css?family=Petit+Formal+Script" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Vollkorn" rel="stylesheet">
        <title>HOME</title>
    </head>
    <body>
       
        <div id="header">
		<div id ="header-logo">
			<img id ="logo_L" src="./img/logoteamASD.png" alt="Logo">
		</div>
            
		<div id="header-content">
			<div id="header-content-K">
				<img id="logo_R" src="./img/asd.png" alt="TenSanBong">
                                
                                <h2> Wellcome <%=session.getAttribute("username")%></h2>
<!--                                <button class="btn"><a href="LoginController"<span>Thoát</span></a></button>-->
                              
                              
			</div>	
                        <%
                            if(session.getAttribute("username")!=null){
                               
                                
                            }
                         
                            %>
               
	</div>

	<div id="navigate">
		<div id="navigate-datsan">
			<form id="ndatsan">
				<table>
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
								<option >Chọn Sân</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
							</select>
						</td>
						<td>

							<select name="chonngay">
								<option >Chọn ngày</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
							</select>
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
							<input id="btn_sub" type="submit" value="Tìm sân">
						</td>
					</tr>

				</table>
				
			</form>
		</div>

		<div id="navigate-content">
			<b>
				<h1>
					Sân Bóng Đá Mini Online
					<br>
					Nhanh Chóng Và Dễ Dàng
				</h1>
			</b>
		</div>
	</div>

	<div id="footer">
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
        
    </body>
</html>

