<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">
<title>中创智能OA管理系统</title>
<link rel="icon" href="favicon.ico" type="image/x-icon"> <!-- Favicon-->
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/bootstrap.min.css">
<!-- Custom Css -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/blog.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/color_skins.css">

</head>
<body class="theme-cyan">

<div class="page-loader-wrapper">
    <div class="loader">
        <div class="m-t-30"><img class="zmdi-hc-spin" <%-- src="${pageContext.request.contextPath }/${hospital.logo}" --%> width="48" height="48" alt="Compass"></div>
        <p>正在加载数据,请稍后</p>
    </div>
</div>
<!-- Overlay For Sidebars -->
<!-- <div class="overlay"></div> -->

<!-- Top Bar -->
<div id ="top"><jsp:include page="top.jsp"></jsp:include></div>

<!-- Left Sidebar -->

<div id ="left"><jsp:include page="left.jsp"></jsp:include></div>

<!-- Right Sidebar -->

<!-- Main Content -->
<section class="content home">
    <div class="block-header">
        <div class="row">
            <div class="col-lg-7 col-md-6 col-sm-12">
                <h2>使用方法</h2>
            </div>
            
        </div>
    </div>
    <div class="container-fluid">
        <div class="row clearfix">
            <div class="col-lg-12 content blog-page">
               
								<div class="card">
					
                    <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="mypost" aria-expanded="true">
												<p> 1.软件时刻监测本院在互联网上的所有舆情，如发现关于本院的负面舆情将及时处理，防止事态扩大。通过大数据技术将负面舆情掩盖、沉没、删除，或通过跟帖等手段扭转舆论导向，化解民意矛盾，解决网上争端。</p>
								
												<p>2.软件时刻监测外单位的所有信息，及时了解外单位或区域内竞争对手的新技术，新动向。让医院学习并超越竞争对手，提升科研和管理能力，并可在外单位的负面舆情下方通过跟贴等手段引导广大群众到本单位就医，提高本单位知名度及美誉度，增加经济效益。</p>
												<p>3.软件可时刻监测国内医疗行业的所有最新政策、前沿技术、大型事件，让管理者时刻掌握行业最新发展方向，提升医院综合实力。</p>
												<p>4.本系统保密性强，可实现权限管理，不同级别的管理者可以看到不同危险级别的舆情，最高决策者才可看到所有信息。系统可通过app和最高决策者手机号码进行权限绑定，只有通过特定手机才能登陆。</p>
												<p>5.打开本软件后，点击舆情信息标题下方的来源，即可链接到该信息的出处，并做出相应处理。</p>
								</div>
                    </div>
                </div>
                </div>
            </div>
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
			$("#method").attr("class","open active");
			
	});
	},100);
	
</script>
</html>


