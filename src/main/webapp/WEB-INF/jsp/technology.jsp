<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js " lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">
<title>${hospital.hospitalname }</title>
<link rel="icon" href="favicon.ico" type="image/x-icon"> <!-- Favicon-->
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/bootstrap.min.css">
<!-- Custom Css -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/blog.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/color_skins.css">
</head>
<body class="theme-cyan">
<!-- Page Loader -->
<div class="page-loader-wrapper">
    <div class="loader">
        <div class="m-t-30"><img class="zmdi-hc-spin" src="${pageContext.request.contextPath }/${hospital.logo}" width="48" height="48" alt="Compass"></div>
        <p>正在加载数据,请稍后</p>
    </div>
</div>
<!-- Overlay For Sidebars -->
<div class="overlay"></div>

<!-- Top Bar -->
<div id = "top"></div>

<!-- Left Sidebar -->

<div id = "left"></div>

<!-- Right Sidebar -->
<style type="text/css">
.bth{
   background-color:skyblue;
}
</style>
<!-- Main Content -->
<section class="content home">
    <div class="block-header">
        <div class="row">
            <div class="col-lg-7 col-md-6 col-sm-12">
                <h2>前沿技术
                <!--<small class="text-muted">Welcome to Compass</small>-->
                </h2>
            </div>
            
        </div>
    </div>
    <div class="container-fluid">
        <!-- <div class="row clearfix">
            <div class="col-sm-12">
                <div class="card">                    
                    <div class="body">
                        <div class="input-group" >
                            <input id="getvalue" type="text" class="form-control" placeholder="Search...">
                            <span class="input-group-addon"><i class="zmdi btn1 zmdi-search"></i></span>
                        </div>
                    </div>
                </div>
            </div>
        </div> -->
        <div class="row clearfix">
            <div class="col-lg-12 content blog-page">
               
								<div class="card">
								
                    <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="mypost" aria-expanded="true">
								
								<c:forEach items="${list}" var="list" varStatus="status" >
								
								<div class="card single_post">
										<div class="body">
												<h6 class="m-t-0"><a href="${list.orignalurl }" target="_blank">${list.title }</a></h6>
												<p>${list.introduction}</p>
										</div>
								</div>
								
								</c:forEach>
								<!-- <div class="card single_post">
										<div class="body">
												<h6 class="m-t-0"><a href="http://m.jshuanya.com" target="_blank">环亚医用集团</a></h6>
												<p>中国最大的整体医院建设运营商，中国最大的洁净手术室供应商。</p>
										</div>
								</div> -->
								
								
						
                    </div>
                </div>
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
    
    
    
    
    
</section>
<!-- Jquery Core Js --> 
<script src="${pageContext.request.contextPath }/assets/bundles/libscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js ( jquery.v3.2.1, Bootstrap4 js) --> 
<script src="${pageContext.request.contextPath }/assets/bundles/vendorscripts.bundle.js"></script> <!-- slimscroll, waves Scripts Plugin Js -->

<script src="${pageContext.request.contextPath }/assets/bundles/morrisscripts.bundle.js"></script><!-- Morris Plugin Js -->
<script src="${pageContext.request.contextPath }/assets/bundles/jvectormap.bundle.js"></script> <!-- JVectorMap Plugin Js -->
<script src="${pageContext.request.contextPath }/assets/bundles/knob.bundle.js"></script> <!-- Jquery Knob Plugin Js -->
<script src="${pageContext.request.contextPath }/assets/bundles/countTo.bundle.js"></script> <!-- Jquery CountTo Plugin Js -->
<script src="${pageContext.request.contextPath }/assets/bundles/sparkline.bundle.js"></script> <!-- Sparkline Plugin Js -->

<script src="${pageContext.request.contextPath }/assets/bundles/mainscripts.bundle.js"></script>
</body>
<script type="text/javascript">
	$(document).ready(function () {
		$('#left').load('${pageContext.request.contextPath }/left');
		$('#top').load('${pageContext.request.contextPath }/top');
	});

	setTimeout(function () {
		$(document).ready(function () {
			$("#technology").attr("class","open active");
	});
	},100);
	
	var pageNum = '${page}'
		$("#pages").html(pageNum);

		var allPage = '${totalPage}';
		var pageNum = '${page}';

		if("0" == allPage || 0 == allPage ){
			
			var nullHtml = "";
			nullHtml +=	'<img style="margin-left: 90px;width:200px;" alt="" src="${pageContext.request.contextPath}/static/img/dataemty.png">';
			

			$("#pageButton").html(nullHtml);
		}
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
			location.href="${pageContext.request.contextPath }/frontiertechnology/list?page="+page;
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
	

		
	
	
	
	
	
	
	
	
	
	
	
	
	
</script>
</html>


