<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<!-- <script type="text/javascript">
		function passwordedit
		</script> -->
	</head>
	<body>
		<aside id="leftsidebar" class="sidebar">
		    <div class="menu">
		        <ul class="list">
		            <li>
		                <div class="user-info">
		                    <%-- <div class="image"><a href="#"><img src="${pageContext.request.contextPath }/assets/photos/czzxyy.jpeg" alt="User"></a></div> --%>
		                    <div class="image"><a href="#"><img <%-- src="${pageContext.request.contextPath }/${user.image} "--%> alt="user"></a></div>
		                    <div class="detail">
		                        <h4>你好，${user.name}</h4>
		                       <!--  <small>信息科主任</small>   -->                      
		                    </div>
		                    
		                </div>
		            </li>
		            <li id="method"> <a href="${pageContext.request.contextPath }/userlogin/method" class="menu-toggle"><i class="zmdi zmdi-hdr-weak"></i><span>首页</span> </a></li>
		            <li id="subject">  <a href="${pageContext.request.contextPath }/intelligence/list?page=1&kind=1" class="menu-toggle"><i class="zmdi zmdi-account-o"></i><span>情报细分</span> </a></li>         
								<li id="feeling"><a href="javascript:void(0);" class="menu-toggle"><i class="zmdi zmdi-account-add"></i><span>本院网情</span> </a>
										<ul class="ml-menu">
												<li id="sensational"><a href="${pageContext.request.contextPath }/Hospitalnews/list?page=1&kind=6">相关舆情</a></li>
												<li id="comments"><a href="${pageContext.request.contextPath }/Hospitalnews/networkevaluation?page=1&kind=6">网络评论</a></li>                       
												<c:if test="${User.role == 1}"><li id="doctors"><a href="${pageContext.request.contextPath }/Doctorinfo/getallleader">领导关注</a></li></c:if>
										</ul>
								</li>
		            <li id="events"> <a href="${pageContext.request.contextPath }/hospitaldemeanor/list?page=1" class="menu-toggle"><i class="zmdi zmdi-balance-wallet"></i><span>名院风采</span> </a></li>
		            <li id="focus"> <a href="${pageContext.request.contextPath }/otherhospital/list?page=1" class="menu-toggle"><i class="zmdi zmdi-apps"></i><span>其他医院</span> </a></li>
		            <li id="technology"> <a href="${pageContext.request.contextPath }/frontiertechnology/list?page=1" class="menu-toggle"><i class="zmdi zmdi-unfold-less"></i><span>前沿技术</span> </a></li>
		            <li id="collection"> <a href="${pageContext.request.contextPath }/collection/list?page=1" class="menu-toggle"><i class="zmdi zmdi-camera-mic"></i><span>信息收藏</span> </a></li>
		            <li id="passwordedit"> <a href="${pageContext.request.contextPath }/userexit/passwordedit" class="menu-toggle" ><i class="zmdi zmdi-arrow-left-bottom"></i><span>个人信息修改</span> </a></li>
		        </ul>
		    </div>
		</aside>
	</body>
</html>
