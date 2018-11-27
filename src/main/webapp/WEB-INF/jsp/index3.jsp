<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=Edge">
		<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
		<meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">
		<title>${hospital.hospitalname}</title>
		<link rel="icon" href="favicon.ico" type="image/x-icon">
		<!-- Favicon-->
		<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/bootstrap.min.css" type="text/css">
		
		
		
		
		<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/jquery-jvectormap-2.0.3.min.css" type="text/css"/>
		<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/morris.min.css" type="text/css"/>
		<!-- Custom Css -->
		<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/main.css" type="text/css">
		<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/blog.css" type="text/css">
		<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/color_skins.css" type="text/css">
	</head>
	
	<style type="text/css">
		a{
			color: #9e9b9b;
		}

	</style>
	<body style="background: url(${pageContext.request.contextPath }/images/beijing.jpg); background-repeat: no-repeat;background-size: 100% 100%; background-attachment:fixed;">

		<div class="ha" style="margin-top: 6%;font-size: 15px;">
			<div id="" style="text-align:  center;">
				<div id=" "  style="text-align: center;margin: auto;">
							<img src="${pageContext.request.contextPath }/images/hospitallogo.png" style="height: 60px;width: 220px;margin-top: 20px;" />
			    </div>
			</div>
			
			<div id="" style="text-align:  center;margin-top: 5%;" >
				<div id="" style="display: inline-block;border: 1px solid white;width:85px;height:85px;background-color: white;padding-top: 10px;border-radius: 20px;">

					<div>
						<div id=" "  style="text-align: center;">
							<!--<i class="zmdi zmdi-eye col-amber"></i>-->
							<a href="method.html"><img src="${pageContext.request.contextPath }/images/01.png"style="height:  40px;width: 40px;margin-top: 0px;" /></a>
						</div>
						<div id=""  style="text-align: center;margin-top: 6px;">
							 <a href="method.html" ">使用方法</a> 
						</div>
                     </div>
				</div>
				<div id="" style="display: inline-block;border: 1px solid white;width:85px;height:85px; margin-left: 10px;background-color: white;padding-top: 10px;border-radius: 20px;">

					<div >
						<div id=" "  style="text-align: center;">
							<!--<i class="zmdi zmdi-amazon text-success"></i>-->
							<a href="sensational.html"><img src="${pageContext.request.contextPath }/images/02.png" style="height:  40px;width:  40px;margin-top: 0px;" /></a>
						</div>
						<div id=""  style="text-align: center;;margin-top: 6px;">
							 <a href="sensational.html" ">本院网情</font> 
						</div>
                     </div>
				</div>
				<div id=" " style="display: inline-block;border: 1px solid white;width:85px;height:85px;margin-left: 10px;background-color: white;padding-top: 10px;border-radius: 20px;">
					<div >
						<div id=" "  style="text-align: center;">
							<!--<i class="zmdi zmdi-account-box-o text-success"></i>-->
							<a href="doctors.html"><img src="${pageContext.request.contextPath }/images/03.png" style="height:  40px;width:  40px;margin-top: 0px;" /></a>
						</div>
						<div id=""  style="text-align: center;;margin-top: 6px;">
							 <a href="doctors.html">领导关注</a> 
						</div>
                     </div> 
				</div>
			</div>
			<div id=" "style="margin-top: 15px;text-align:  center;">
				
				<div id=" " style="display: inline-block;border: 1px solid white;width:85px;height:85px ;background-color: white;padding-top: 10px;border-radius: 20px;">
					<div >
						<div id=" "  style="text-align: center;">
							<!--<i class="zmdi zmdi-account-box-phone text-success"></i>-->
							<a href="comments.html"><img src="${pageContext.request.contextPath }/images/04.png" style="height:  40px;width:  40px;margin-top: 0px;" /></a>
						</div>
						<div id=""  style="text-align: center;;margin-top: 6px;">
							 <a href="comments.html">网络评论</a> 
						</div>
                     </div> 
				</div>
				<div id=" " style="display: inline-block;border: 1px solid white;width:85px;height:85px;background-color: white;padding-top: 10px;margin-left: 10px;border-radius: 20px;">
					<div >
						<div id=" "  style="text-align: center;">
						<!--	<i class="zmdi zmdi-account text-success"></i>-->
							<a href="subject.html"><img src="${pageContext.request.contextPath }/images/05.png" style="height:  40px;width:  40px;margin-top: 0px;" /></a>
						</div>
						<div id=""  style="text-align: center;margin-top: 6px;"">
							 <a href="subject.html">情报细分</a> 
						</div>
                    </div>  
				</div>
				<div id=" " style="display: inline-block;border: 1px solid white;width:85px;height:85px;margin-left: 10px;background-color: white;padding-top: 10px;border-radius: 20px;">
					<div >
						<div id=" "  style="text-align: center;margin: auto;">
							<!--<i class="zmdi zmdi-comment-text col-red"></i>-->
							<a href="focus.html"><img src="${pageContext.request.contextPath }/images/06.png" style="height:  40px;width: 40px;margin-top: 0px;" /></a>
						</div>
						<div id=""  style="text-align: center;;margin-top: 6px;">
							 <a href="focus.html" >其他医院</a> 
						</div>
                     </div> 
				</div>
			</div>
			
             <div id=" "style="margin-top: 15px;text-align:  center;">
				<div id=" " style="display: inline-block;border: 1px solid white;width:85px;height:85px;background-color: white;padding-top: 10px;border-radius: 20px;">
					<div >
						<div id=" "  style="text-align: center;">
						<!--	<i class="zmdi zmdi-account text-success"></i>-->
							<a href="events.html"><img src="${pageContext.request.contextPath }/images/07.png" style="height:  40px;width:  40px;margin-top: 0px;" /></a>
						</div>
						<div id=""  style="text-align: center;margin-top: 6px;"">
							 <a href="events.html">名院风采</a> 
						</div>
                    </div>  
				</div>
				<div id=" " style="display: inline-block;border: 1px solid white;width:85px;height:85px;margin-left: 10px;background-color: white;padding-top: 10px;border-radius: 20px;">
					<div >
						<div id=" "  style="text-align: center;margin: auto;">
							<!--<i class="zmdi zmdi-comment-text col-red"></i>-->
							<a href="technology.html"><img src="${pageContext.request.contextPath }/images/08.png" style="height:  40px;width: 40px;margin-top: 0px;" /></a>
						</div>
						<div id=""  style="text-align: center;;margin-top: 6px;">
							 <a href="technology.html" >前沿技术</a> 
						</div>
                     </div> 
				</div>
				<div id=" " style="display: inline-block;border: 1px solid white;width:85px;height:85px;margin-left: 10px;background-color: white;padding-top: 10px;border-radius: 20px;">
					<div >
						<div id=" "  style="text-align: center;margin: auto;">
							<!--<i class="zmdi zmdi-comment-text col-red"></i>-->
							<a href="collection.html"><img src="${pageContext.request.contextPath }/images/09.png" style="height:  40px;width: 40px;margin-top: 0px;" /></a>
						</div>
						<div id=""  style="text-align: center;;margin-top: 6px;">
							 <a href="collection.html" >信息收藏</a> 
						</div>
                     </div> 
				</div>
				
				
			</div>
			<div id=" "style="margin-top: 10px;">
				<div id=" "  style="text-align: center;margin: auto;">
							<img src="${pageContext.request.contextPath }/images/xtlogo.png" style="height:  30px;width: 80px;margin-top: 50px;margin-left: 220px;" />
			    </div>
				
				
			</div>
			
			
			
		</div>
		
		
      <script>
      	
      	
      	
      </script>		
		
		
		

	</body>

</html>


