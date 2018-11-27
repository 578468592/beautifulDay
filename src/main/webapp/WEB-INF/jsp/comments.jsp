<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">
<title>${hospital.hospitalname}</title>
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

<!-- Main Content -->
		<section class="content home">
			<div class="block-header">
				<div class="row">
					<div class="col-lg-7 col-md-6 col-sm-12">
						<h2>网络评论
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
								<div class="input-group">
									<input type="text" class="form-control" placeholder="Search...">
									<span class="input-group-addon"><i class="zmdi zmdi-search"></i></span>
								</div>
							</div>
						</div>
					</div>
				</div> -->
				<div class="row clearfix">
					<div class="col-lg-12 content blog-page">

						<div class="card">
							<ul class="nav nav-tabs">
								<ul class="nav nav-tabs">
                        <li class="nav-item"><a class="nav-link "aria-expanded="false"
                        href="${pageContext.request.contextPath }/Hospitalnews/networkevaluation?page=1&kind=6" id="quanbu">全部</a></li>
                        <li class="nav-item"><a class="nav-link "  aria-expanded="false" name="negative"
                         href="${pageContext.request.contextPath }/Hospitalnews/networkevaluation?page=1&kind=2" id="fumian" >负面</a></li>
                        <li class="nav-item"><a class="nav-link "   aria-expanded="false" name="front"
                       href="${pageContext.request.contextPath }/Hospitalnews/networkevaluation?page=1&kind=1" id="zhengmian">正面</a></li>
                    </ul>
							</ul>
							<div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="mypost" aria-expanded="true">
                    	<div class="card single_post">
                    	<div class="tab-content">
						<div role="tabpanel" class="tab-pane blog-page active" id="qubu fumian zhengmian">
							<c:forEach items="${list}" var="list" varStatus="status" >
							<div class="card single_post">
								<div class="body">
								
								<ul class="inbox-widget list-unstyled clearfix">
												<li class="inbox-inner">	
														<div class="inbox-item">
															<!-- <div class="inbox-img"> <img src="assets/images/avatar1.jpg" alt=""> </div> -->
															<div class="inbox-item-info" style="margin-left:0px">
																<p class="author">${list.identification}</p>
																<p class="inbox-message">${list.text}</p>
																<p class="inbox-date">${list.date } <span class="nonameed" style=" margin-left: 10px; ">来源:</span>
																	<a href="${list.weburl}" target="_blank">${list.originweb}</a>
																		<c:if test="${list.flag==0}">
									  <button type="button" style="padding: 4px 8px;color:red; background-color:white;margin-bottom: 10px;" class="btn btn-default" onclick="shoucang(${list.id})">收藏</button>
									 </c:if>
									 <c:if test="${list.flag>0}">
									     已收藏
									 </c:if>
																</p>
														
															</div>
														</div>
													</a>
												</li>
								</ul>
								
								
								
								
								
								
								
								
									<%-- <h6 class="m-t-0">
										<a
											href="${list.weburl}"
											target="_blank" style="font-size: large;">${list.identification}</a>
									</h6>
									<p style="font-size: smaller;">
										来源：<a
											href="${list.weburl}"
											target="_blank">${list.originweb}</a> 日期：<a href="#">${list.date }<a>
									</p>
									<p>${list.abstractcontent }</p>
									<p style="font-size: smaller;">内容：${list.text }
									  <c:if test="${list.flag==0}">
									  <button type="button" style="padding: 4px 8px;color:red; background-color:white;" class="btn btn-default" onclick="shoucang(${list.id})">收藏</button>
									 </c:if>
									 <c:if test="${list.flag>0}">
									     已收藏
									 </c:if>
									 </p> --%>

								<!-- 	<div class="row"></div> -->
								</div>
							</div>
                              </c:forEach>
						</div>
							
							
				<!-- 			<div class="tab-content">
								<div role="tabpanel" class="tab-pane active" id="mypost" aria-expanded="true">
									<div class="card single_post">
										<div class="body">
											<ul class="inbox-widget list-unstyled clearfix">
												<li class="inbox-inner">
													<a href="javascript:void(0)">
														<div class="inbox-item">
															<div class="inbox-img"> <img src="assets/images/avatar1.jpg" alt=""> </div>
															<div class="inbox-item-info">
																<p class="author">董***</p>
																<p class="inbox-message">王光亚 内分泌科 主任医师认真，细心，周到。医术高明，对病号的病耐心解释，注意事项都面面俱到的告诉。</p>
																<p class="inbox-date">2018.06.04 <span class="nonameed" style=" margin-left: 10px; ">来源:</span>
																	<a href="https://www.haodf.com/jingyan/jiakang-cangzhouzhongxinyiyuan-hospital.htm" target="_blank">好大夫</a>
																</p>
															</div>
														</div>
													</a>
												</li>

												<li class="inbox-inner">
													<a href="javascript:void(0)">
														<div class="inbox-item">
															<div class="inbox-img"> <img src="assets/images/avatar1.jpg" alt=""> </div>
															<div class="inbox-item-info">
																<p class="author">made706</p>
																<p class="inbox-message" style="white-space: inherit;">有谁知道怎么投诉中心医院有效，不行我就找律师直接起诉，无德的中心医院儿科，你们还有人性吗，为了钱就霍霍孩子，你们的良心被狗吃了</p>
																<p class="inbox-date">2018.06.04 <span class="nonameed" style=" margin-left: 10px; ">来源:</span>
																	<a href="https://www.haodf.com/jingyan/jiakang-cangzhouzhongxinyiyuan-hospital.htm" target="_blank">百度贴吧</a>
																</p>
															</div>
														</div>
													</a>
												</li>
												<li class="inbox-inner">
													<a href="javascript:void(0)">
														<div class="inbox-item">
															<div class="inbox-img"> <img src="assets/images/avatar1.jpg" alt=""> </div>
															<div class="inbox-item-info">
																<p class="author">赵***</p>
																<p class="inbox-message" style="white-space: inherit;">赵永才 内分泌科 主任医师赵医生说话犹如亲人，待人亲切，尤其是技术高超，祝赵医生工作顺利</p>
																<p class="inbox-date">2018.05.03 <span class="nonameed" style=" margin-left: 10px; ">来源:</span>
																	<a href="https://www.haodf.com/jingyan/jiakang-cangzhouzhongxinyiyuan-hospital.htm" target="_blank">好大夫网</a>
																</p>
															</div>
														</div>
													</a>
												</li>
												
												<li class="inbox-inner">
													<a href="javascript:void(0)">
														<div class="inbox-item">
															<div class="inbox-img"> <img src="assets/images/avatar1.jpg" alt=""> </div>
															<div class="inbox-item-info">
																<p class="author">121.16.225.*</p>
																<p class="inbox-message" style="white-space: inherit;">开电梯的是够可恶,很牛但是他们好象不属于医院管理 所以医院也不好说什么吧!</p>
																<p class="inbox-date">2018/4/14 13:15<span class="nonameed" style=" margin-left: 10px; ">来源:</span>
																	<a href="https://www.haodf.com/jingyan/all-zhaoye-8.htm" target="_blank">贴吧</a>
																</p>
															</div>
														</div>
													</a>
												</li>
												<li class="inbox-inner">
													<a href="javascript:void(0)">
														<div class="inbox-item">
															<div class="inbox-img"> <img src="assets/images/avatar1.jpg" alt=""> </div>
															<div class="inbox-item-info">
																<p class="author">南海椰风9</p>
																<p class="inbox-message" style="white-space: inherit;">哈哈哈……看来丁香医生上小规培说的是真的。每个月扣发工资……宝宝不哭，坚强点</p>
																<p class="inbox-date">2018/3/15 15:01<span class="nonameed" style=" margin-left: 10px; ">来源:</span>
																	<a href="https://tieba.baidu.com/p/5482720364" target="_blank">百度贴吧</a>
																</p>
															</div>
														</div>
													</a>
												</li>
												<li class="inbox-inner">
													<a href="javascript:void(0)">
														<div class="inbox-item">
															<div class="inbox-img"> <img src="assets/images/avatar1.jpg" alt=""> </div>
															<div class="inbox-item-info">
																<p class="author">啃着雪糕堆雪人</p>
																<p class="inbox-message" style="white-space: inherit;">妇二护士刘亚静素质太低</p>
																<p class="inbox-date">2018/2/26 22:29<span class="nonameed" style=" margin-left: 10px; ">来源:</span>
																	<a href="https://tieba.baidu.com/p/5567648541" target="_blank">贴吧</a>
																</p>
															</div>
														</div>
													</a>
												</li>
     											<li class="inbox-inner">
													<a href="javascript:void(0)">
														<div class="inbox-item">
															<div class="inbox-img"> <img src="assets/images/avatar1.jpg" alt=""> </div>
															<div class="inbox-item-info">
																<p class="author">宋***</p>
																<p class="inbox-message" style="white-space: inherit;">"赵烨主任，细心，耐心，爱心为患者服务。金钱名利淡如水，医德医道大于天。个人利益抛一旁，患者病情在心间。</p>
																<p class="inbox-date">2017.12.28 <span class="nonameed" style=" margin-left: 10px; ">来源:</span>
																	<a href="https://www.haodf.com/jingyan/all-zhaoye-8.htm" target="_blank">好大夫网</a>
																</p>
															</div>
														</div>
													</a>
												</li>
													
												<li class="inbox-inner">
													<a href="javascript:void(0)">
														<div class="inbox-item">
															<div class="inbox-img"> <img src="assets/images/avatar1.jpg" alt=""> </div>
															<div class="inbox-item-info">
																<p class="author">刘小辉44</p>
																<p class="inbox-message" style="white-space: inherit;">为什么中心医院一直拖欠工资和奖金啊，这都揭不开锅了上那诉苦去心里苦啊</p>
																<p class="inbox-date">2017/12/17 23:28<span class="nonameed" style=" margin-left: 10px; ">来源:</span>
																	<a href="https://tieba.baidu.com/p/5482720364" target="_blank">贴吧</a>
																</p>
															</div>
														</div>
													</a>
												</li>
												
												<li class="inbox-inner">
													<a href="javascript:void(0)">
														<div class="inbox-item">
															<div class="inbox-img"> <img src="assets/images/avatar1.jpg" alt=""> </div>
															<div class="inbox-item-info">
																<p class="author">真汉子AK47</p>
																<p class="inbox-message" style="white-space: inherit;">之前去医院父亲有点肺炎 因为得过脑震荡所以不能呼吸顺畅 那个死护士一脸**样 我也是服了</p>
																<p class="inbox-date">2017/11/4 8:50<span class="nonameed" style=" margin-left: 10px; ">来源:</span>
																	<a href="https://tieba.baidu.com/p/5409440520" target="_blank">百度贴吧</a>
																</p>
															</div>
														</div>
													</a>
												</li>
												<li class="inbox-inner">
													<a href="javascript:void(0)">
														<div class="inbox-item">
															<div class="inbox-img"> <img src="assets/images/avatar1.jpg" alt=""> </div>
															<div class="inbox-item-info">
																<p class="author">圣霞远通</p>
																<p class="inbox-message" style="white-space: inherit;">中心医院CT室的丑女人和吃了屎一样的臭脸</p>
																<p class="inbox-date">2017/10/16 13:38<span class="nonameed" style=" margin-left: 10px; ">来源:</span>
																	<a href="https://tieba.baidu.com/p/5375121230" target="_blank">百度贴吧</a>
																</p>
															</div>
														</div>
													</a>
												</li>
													<li class="inbox-inner">
													<a href="javascript:void(0)">
														<div class="inbox-item">
															<div class="inbox-img"> <img src="assets/images/avatar1.jpg" alt=""> </div>
															<div class="inbox-item-info">
																<p class="author">柱杖芒鞋</p>
																<p class="inbox-message" style="white-space: inherit;">不明白沧州人为什么都没信中心医院。妇产科医生态度尤其差</p>
																<p class="inbox-date">2017/8/12 15:52<span class="nonameed" style=" margin-left: 10px; ">来源:</span>
																	<a href="https://tieba.baidu.com/p/4875616497" target="_blank">贴吧</a>
																</p>
															</div>
														</div>
													</a>
												</li>
												<li class="inbox-inner">
													<a href="javascript:void(0)">
														<div class="inbox-item">
															<div class="inbox-img"> <img src="assets/images/avatar1.jpg" alt=""> </div>
															<div class="inbox-item-info">
																<p class="author">收获的季节</p>
																<p class="inbox-message" style="white-space: inherit;">中心医院服服务太差了</p>
																<p class="inbox-date">2017/7/3 8:10<span class="nonameed" style=" margin-left: 10px; ">来源:</span>
																	<a href="https://tieba.baidu.com/p/4875616497" target="_blank">贴吧</a>
																</p>
															</div>
														</div>
													</a>
												</li>
												<li class="inbox-inner">
													<a href="javascript:void(0)">
														<div class="inbox-item">
															<div class="inbox-img"> <img src="assets/images/avatar1.jpg" alt=""> </div>
															<div class="inbox-item-info">
																<p class="author">121.16.214.*(来自河北省沧州市)</p>
																<p class="inbox-message" style="white-space: inherit;">"我患***已经将近三年了 每当我病情严重或者治疗的关键期 李大钧主任总是亲自为我诊治 他问诊仔细 态度和蔼 2006年11月份 我的病情十分严重 我自己几乎要放弃了 是他亲自为我制定治疗方案 并给我以鼓励和信心 正是在他的关注下 我又逃离了死神的魔爪 一晃两年过去了 我的病情好转稳定 这次去做定期化疗又是李主任结合我本人的实际情况亲自参与治疗方案 在几年的治疗过程中 我感受最深的是 李主任不仅医治我身体的病痛 而且让我有勇气有信心面对自己的病 我相信李大钧大夫 感谢李大均大夫</p>
																<p class="inbox-date">2016.05.04 <span class="nonameed" style=" margin-left: 10px; ">来源:</span>
																	<a href="https://www.haodf.com/jingyan/baixuebing-cangzhouzhongxinyiyuan-hospital.htm" target="_blank">好大夫网</a>
																</p>
															</div>
														</div>
													</a>
												</li>

												
												<li class="inbox-inner">
													<a href="javascript:void(0)">
														<div class="inbox-item">
															<div class="inbox-img"> <img src="assets/images/avatar1.jpg" alt=""> </div>
															<div class="inbox-item-info">
																<p class="author">Zhafggsdggff</p>
																<p class="inbox-message" style="white-space: inherit;">请大家帮忙扩散一下 ，让所有人都知道这家黑心的医院！！！</p>
																<p class="inbox-date">2016/3/12 17:21<span class="nonameed" style=" margin-left: 10px; ">来源:</span>
																	<a href="https://weibo.com/2170736103/DlVnC7sgi?type=repost#_rnd1529905447612" target="_blank">2016/3/12 17:21</a>
																</p>
															</div>
														</div>
													</a>
												</li>
												
											
												
											
												


												
											</ul>
										</div>
									</div>
								</div> -->
						<div class="btn-group" style="padding: 15px; width: 100%;" >
			<div style="text-align: center; margin-top: 16px;margin-bottom: 0px" id="pageButton">
				<c:if test="${totalPage < 1}">
					<img style="margin-left: 90px;width:200px;" alt="" src="${pageContext.request.contextPath}/static/img/dataemty.png">
				</c:if>
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
var kind = '${kind}';
if(kind==6){
	$("#quanbu").attr("class","nav-link active");
}else if(kind==2){
	$("#fumian").attr("class","nav-link active");
}else if(kind==1){
	$("#zhengmian").attr("class","nav-link active");
}

	$(document).ready(function () {
		$('#left').load('${pageContext.request.contextPath }/left');
		$('#top').load('${pageContext.request.contextPath }/top');
	});

	setTimeout(function () {
		$(document).ready(function () {
			$("#feeling").attr("class","open active");
			$("#sensational").attr("class","open active");
	});
	},100);
	
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
			location.href="${pageContext.request.contextPath }/Hospitalnews/networkevaluation?page="+page+"&kind="+kind;
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
</html>


