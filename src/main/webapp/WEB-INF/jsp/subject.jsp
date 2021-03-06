·<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html class="no-js " lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<meta name="description"
	content="Responsive Bootstrap 4 and web Application ui kit.">
<title>${hospital.hospitalname }</title>



<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- Favicon-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/css/bootstrap.min.css">
<!-- Custom Css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/css/main.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/css/blog.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/css/color_skins.css">
</head>
 <style type="text/css">
/*      .navbar {
    padding-top: .625rem;
    padding-bottom: .625rem;
    min-height: 60px;
    margin-bottom: 20px;
    box-shadow: 0px 0px 20px 0px rgba(0,0,0,0.15);
} */
.navbar-header{
    height: 59px;
    

}
.navbar .navbar-brand {
    padding-top: .5rem;
    padding-bottom: .1rem;
}



</style> 
<body class="theme-cyan">
	<!-- Page Loader -->
	<div class="page-loader-wrapper">
		<div class="loader">
			<div class="m-t-30">
				<img class="zmdi-hc-spin"
					src="${pageContext.request.contextPath }/${hospital.logo}"
					width="48" height="48" alt="Compass">
			</div>
			<p>正在加载数据,请稍后</p>
		</div>
	</div>
	<!-- Overlay For Sidebars -->
	<div class="overlay"></div>

	<!-- Top Bar -->
	<div id="top"></div>

	<!-- Left Sidebar -->

	<div id="left"></div>

	<!-- Right Sidebar -->

	<!-- Main Content -->
	<section class="content home">
		<div class="block-header">
			<div class="row">
				<div class="col-lg-7 col-md-6 col-sm-12">
					<h2>情报细分</h2>
				</div>

			</div>
		</div>
		<div class="container-fluid">
			<div class="row clearfix">

				<div class="col-lg-12 col-md-12">
					<div class="card">
						<ul class="nav nav-tabs">
							<li class="nav-item"><a id="dxgz" class="nav-link"
								href="${pageContext.request.contextPath }/intelligence/list?page=1&kind=1">党性工作主题</a></li>
							<li class="nav-item"><a id="ffcl" class="nav-link"
								 href="${pageContext.request.contextPath }/intelligence/list?page=1&kind=2">反腐倡廉主题</a></li>
							<li class="nav-item"><a id="ylfw" class="nav-link"
								 href="${pageContext.request.contextPath }/intelligence/list?page=1&kind=3">医疗服务主题</a></li>
							<li class="nav-item"><a id="yxyj" class="nav-link"
								 href="${pageContext.request.contextPath }/intelligence/list?page=1&kind=4">医学研究主题</a></li>
						</ul>
					</div>
					<div class="tab-content">
						<div role="tabpanel" class="tab-pane blog-page active" id="dxgz ffcl ylfw yxyj">
							<c:forEach items="${list}" var="list" varStatus="status" >
							<div class="card single_post">
								<div class="body">
								
									<h6 class="m-t-0">
										<a					href="${list.weburl }"
											target="_blank" style="font-size: large;">${list.title}</a>
									</h6>
									<p style="font-size: smaller;">
										来源：<a
											href="${list.weburl }"
											target="_blank">${list.originweb}</a> 时间：<a href="#">${list.date }<a>
									</p>
									<p>${list.abstractcontent }</p>
									<p style="font-size: smaller;">关键词：${list.keyword }
									 <c:if test="${list.flag==0}">
									  <button type="button" style="padding: 4px 8px;margin-top: 1px;color:red; background-color:white;" class="btn btn-default" onclick="shoucang(${list.id})">收藏</button>
									 </c:if>
									 <c:if test="${list.flag>0}">
									 <button type="button" style="padding: 4px 8px;margin-top: 1px;color:black; background-color:white;" class="btn btn-default" onclick="#">已收藏</button>
									     
									 </c:if>
									 </p>
									
									
									<div class="row"></div>
								</div>
							</div>
                              </c:forEach>
						</div>
					</div>
				</div>
			</div>

			<div class="btn-group" style="padding: 15px; width: 100%;" >
			<div style="text-align: center; margin-top: 16px;margin-bottom: 0px" id="pageButton">
				<c:if test="${totalPage < 1}"></c:if>
				<c:if test="${totalPage >= 1}">
					<button type="button" class="btn btn-default" onclick="goPage(1)">首页</button>

					<button type="button" class="btn btn-default active" id="pages"></button>


					<button type="button" class="btn btn-default"
						onclick="goPage(${totalPage})">末页</button>
					<font style="line-height: 34px"> &nbsp;&nbsp;共${totalPage}页
					</font>
					<font style="line-height: 34px; margin-left: 30px">
						到&nbsp;&nbsp;<input type="number" id="jumpPage"
						style="width: auto; height: 34px" max="${totalPage}" min="1" />
						页 &nbsp;&nbsp;&nbsp;&nbsp;
					</font>
					<button type="button" class="btn btn-default" onclick="jumpPage()"
						style="float: none;">确定</button>

				</c:if>
			</div>

       </div>



		</div>
	</section>
	<!-- Jquery Core Js -->
	<script
		src="${pageContext.request.contextPath }/assets/bundles/libscripts.bundle.js"></script>
	<!-- Lib Scripts Plugin Js ( jquery.v3.2.1, Bootstrap4 js) -->
	<script
		src="${pageContext.request.contextPath }/assets/bundles/vendorscripts.bundle.js"></script>
	<!-- slimscroll, waves Scripts Plugin Js -->

	<script
		src="${pageContext.request.contextPath }/assets/bundles/morrisscripts.bundle.js"></script>
	<!-- Morris Plugin Js -->
	<script
		src="${pageContext.request.contextPath }/assets/bundles/jvectormap.bundle.js"></script>
	<!-- JVectorMap Plugin Js -->
	<script
		src="${pageContext.request.contextPath }/assets/bundles/knob.bundle.js"></script>
	<!-- Jquery Knob Plugin Js -->
	<script
		src="${pageContext.request.contextPath }/assets/bundles/countTo.bundle.js"></script>
	<!-- Jquery CountTo Plugin Js -->
	<script
		src="${pageContext.request.contextPath }/assets/bundles/sparkline.bundle.js"></script>
	<!-- Sparkline Plugin Js -->

	<script
		src="${pageContext.request.contextPath }/assets/bundles/mainscripts.bundle.js"></script>
</body>
<script type="text/javascript">

var kind = '${kind}';
if(kind==1){
	$("#dxgz").attr("class","nav-link active");
}else if(kind==2){
	$("#ffcl").attr("class","nav-link active");
}else if(kind==3){
	$("#ylfw").attr("class","nav-link active");
}else if(kind==4){
	$("#yxyj").attr("class","nav-link active");
}


/* var list = '${list}';
alert(list.size());
for(var i=0;i<list.length;i++){
      html += '<div class="card single_post active">';
      html += '<div class="body">';
      html +=	'<h6 class="m-t-0"><a href="'+list[i].weburl+'" target="_blank" style=" font-size: large; ">'+list[i].title+'</a></h6>';
      html +=	'<p style=" font-size: smaller; ">来源：<a href="'+list[i].weburl+'" target="_blank">'+list[i].originweb+'</a> 时间：<a href="#">'+list[i].date+'<a></p>';
      html +=	'<p>'+list[i].abstractcontent+'</p>';
      html+= '<div class="row">';
      html+='</div>';
      html+='</div>';
      html+='</div>'; 
}
if(kind==1){
	
	var dxgz1 = document.getElementById("dxgz1");
	dxgz1.append(html);
	
} */






var pageNum = '${page}'
$("#pages").html(pageNum);

var allPage = '${totalPage}';
var pageNum = '${page}';

var htmlxx = "";
for(var xx = 1;xx < 3;xx++){
	
	var upPage =  parseInt(pageNum) - 3 + parseInt(xx);
	
	
	if(upPage > 0){
		htmlxx += '<button type="button" class="btn btn-default" onclick="goPage(' + upPage + ')">' + upPage + '</button>';
	}
}

$("#pages").before(htmlxx);

htmlxx = "";
for(var xx = 1;xx < 3;xx++){
	
	var upPage =  parseInt(pageNum) + parseInt(xx);
	
	if(upPage <= allPage){
		htmlxx += '<button type="button" class="btn btn-default" onclick="goPage(' + upPage + ')">' + upPage + '</button>';
	}
}

$("#pages").after(htmlxx);

function goPage(page){
	//zeroModal.loading(1);
	location.href="${pageContext.request.contextPath }/intelligence/list?page="+page+"&kind="+kind;
}

function upPage(){
	if(pageNum <= 1){
		aletMassage("已在首页","error");
		return;					
	}	
	goPage(pageNum - 1);
}
function nextPage(){
	if(pageNum >= totalPage){
		aletMassage("已在尾页","error");
		return;					
	}	
	goPage(pageNum + 1);
}

/* 
function toDetail(id){

$("#hide").css.style="block";
} */


function jumpPage(){
var jumpPage = $("#jumpPage").val();
/* if(jumpPage>=500){
jumpPage = 500;
} */


var allPage = '${totalPage}';


var re = /^[1-9]\d*$/;

if (!re.test(jumpPage)) {
aletMassage("请输入正整数",'error');
return;
}
if(jumpPage < 1 || parseInt(jumpPage) > parseInt(allPage)){
	alert("大于总页数")
	　//aletMassage("数字不合法！",'error');
　　　　return;
}


 goPage(jumpPage);

}

function shoucang(id){
	 var data= {id:id};
	 $.ajax({
            type:"POST",
	        url:"${pageContext.request.contextPath}/intelligence/collection",
            data:data,
			dataType:'json',
				success:function(data){
					var resultdata = JSON.parse(data);
					console.info(typeof(resultdata));
      		if(resultdata.code=='1'){
          	     window.location.reload();  
     }else if(resultdata.code=='-1'){
         	alert("收藏失败");
    }
}
});
	
	
}






</script>





<script type="text/javascript">
	$(document).ready(function () {
		$('#left').load('${pageContext.request.contextPath }/left');
		$('#top').load('${pageContext.request.contextPath }/top');
	});

	setTimeout(function () {
		$(document).ready(function () {
			$("#subject").attr("class","open active");
	});
	},100);
	
</script>
</html>


