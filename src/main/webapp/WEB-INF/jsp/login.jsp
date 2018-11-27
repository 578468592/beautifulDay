<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!doctype html>
<html class="no-js " lang="en">
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">

    <title>中创智能OA管理系统</title>
    <!-- Favicon-->
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <!-- Custom Css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/main.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/authentication.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/color_skins.css">
</head>

<body class="theme-cyan authentication sidebar-collapse">
<!-- Navbar -->
<nav class="navbar navbar-expand-lg fixed-top navbar-transparent">
    <div class="container">        
        <div class="navbar-translate n_logo">
            <a class="navbar-brand" href="#" title="" target="_blank"></a>
            <button class="navbar-toggler" type="button">
                <span class="navbar-toggler-bar bar1"></span>
                <span class="navbar-toggler-bar bar2"></span>
                <span class="navbar-toggler-bar bar3"></span>
            </button>
        </div>
        <div class="navbar-collapse">
            
        </div>
    </div>
</nav>
<!-- End Navbar -->
<div class="page-header">
    <div class="page-header-image" style="background-image:${pageContext.request.contextPath }/assets/images/x.jpg"></div>
    <div class="container">
        <div class="col-md-12 content-center">
            <div class="card-plain" style=" width: 350px; ">
                    <div class="header">
                        <div class="logo-container" style=" width: 120px; ">
                            <img src="${pageContext.request.contextPath}/assets/images/aeft.jpg" alt="阿尔菲特">
                        </div>
                        <h5>中创智能OA管理系统</h5>
												
                    </div>
                    <div class="content">                                                
                        <div class="input-group input-lg">
                            <input type="text" class="form-control" id="account" placeholder="用户名">
                            <span class="input-group-addon">
                                <i class="zmdi zmdi-account-circle"></i>
                            </span>
                        </div>
                        <div class="input-group input-lg">
                            <input type="password" placeholder="密码" id="password" class="form-control" />
                            <span class="input-group-addon">
                                <i class="zmdi zmdi-lock"></i>
                            </span>
                        </div>
                    </div>
                    <div class="footer text-center">
                        <button id="btn2" class="btn l-cyan btn-round btn-lg btn-block waves-effect waves-light">登陆</button>
                        <h6 class="m-t-20"><a href="forgot-password.html" class="link"></a></h6>
                    </div>
            </div>
        </div>
    </div>
    <footer class="footer">
        <div class="container">
            <nav>
                
            </nav>
            <div class="copyright">
                &copy;
                <script>
                    document.write(new Date().getFullYear())
                </script>,
                <span>Designed by <a href="#" target="_blank">中创智能OA管理系统</a></span>
            </div>
        </div>
    </footer>
</div>

<!-- Jquery Core Js -->
<script type="text/javascript">
		
		 var type = BrowserType();
		 
		 if(0 == type){
		 		location.href="${pageContext.request.contextPath}/userlogin/old";
		 }
		function BrowserType() 
 { 
   var userAgent = navigator.userAgent; //取得浏览器的userAgent字符串 
   
   
   var isOpera = userAgent.indexOf("Opera") > -1; //判断是否Opera浏览器 
   // var isIE = userAgent.indexOf("compatible") > -1 && userAgent.indexOf("MSIE") > -1 && !isOpera; //判断是否IE浏览器 
   var isIE=window.ActiveXObject || "ActiveXObject" in window
   // var isEdge = userAgent.indexOf("Windows NT 6.1; Trident/7.0;") > -1 && !isIE; //判断是否IE的Edge浏览器 
   var isEdge = userAgent.indexOf("Edge") > -1; //判断是否IE的Edge浏览器
   var isFF = userAgent.indexOf("Firefox") > -1; //判断是否Firefox浏览器 
   var isSafari = userAgent.indexOf("Safari") > -1 && userAgent.indexOf("Chrome") == -1; //判断是否Safari浏览器 
   var isChrome = userAgent.indexOf("Chrome") > -1 && userAgent.indexOf("Safari") > -1&&!isEdge; //判断Chrome浏览器 
  
   if (isIE)  
   { 
      var reIE = new RegExp("MSIE (\\d+\\.\\d+);"); 
      reIE.test(userAgent); 
      var fIEVersion = parseFloat(RegExp["$1"]); 
      if(userAgent.indexOf('MSIE 6.0')!=-1){
        return "IE6";
      }else if(fIEVersion == 7) 
        { return "0";} 
      else if(fIEVersion == 8) 
        { return "0";} 
      else if(fIEVersion == 9) 
        { return "0";} 
      else if(fIEVersion == 10) 
        { return "IE10";} 
      else if(userAgent.toLowerCase().match(/rv:([\d.]+)\) like gecko/)){ 
            return "IE11";
        } 
      else
        { return "0"}//IE版本过低
    }//isIE end 
      
    if (isFF) { return "FF";} 
    if (isOpera) { return "Opera";} 
    if (isSafari) { return "Safari";} 
    if (isChrome) { return "Chrome";} 
    if (isEdge) { return "Edge";} 
  }//myBrowser() end 
		
</script>
<script src="${pageContext.request.contextPath }/assets/bundles/libscripts.bundle.js"></script>
<script src="${pageContext.request.contextPath }/assets/bundles/vendorscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js -->
<!-- <script>
	$(".btn").on('click',function(){	
		if(/Android|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent)) {
    window.location.href = "index";
} else {
    window.location.href = "method";
}
		
		
		
	})
	
	
	
</script> -->
<script type="text/javascript">
	$('#btn2').click(function(){
		var account = $("#account").val();
		var password=$("#password").val();
		if(account==''){
			alert("账户不能为空");
			return;
		}
		if(password==''){
			alert("密码不能为空");
			return;
		}
		$.ajax({
			 type :"POST",
			 url : '<%=basePath%>'+"userlogin/findUserByaccount",
			
			 dataType : "json",
			 
			 data:{
				
				"account":account,
				"password":password
			 },
			
			 success:function(map){
				
				if(map.message=="登陆成功"){
					window.location.href = "${pageContext.request.contextPath}/userlogin/method";  
					 
				}else{
					 location.href ='<%=basePath%>'+"/userlogin/";
				}
			 }
		})
	/* 	 var data= {account:account,password:password};
		 $.ajax({
	            type:"POST",
		        url:"${pageContext.request.contextPath}/userlogin/userconsumerlogin",
	            data:data,
    			dataType:'json',
   				success:function(data){
   					var resultdata = JSON.parse(data);
   					console.info(typeof(resultdata));
          		if(resultdata.code=='1'){
          			
          			if(/Android|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent))
          			{
          				window.location.href = "${pageContext.request.contextPath}/"; 
          			}
          			else
          			{
          				window.location.href = "${pageContext.request.contextPath}/method";   
          			}
              	     
         }else if(resultdata.code=='2'){
             	alert("账号过期，请充值");
        }else if(resultdata.code=='-1'){
        	alert("账号或者密码错误！");
        }
    }
}); */
		 });


</script>















