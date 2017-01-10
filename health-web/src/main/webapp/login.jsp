<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ include file="./WEB-INF/commons/res/taglibs.jsp" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>登录页 - Ace Admin</title>

		<meta name="description" content="User login page" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="${res}/css/bootstrap.min.css" />
		<link rel="stylesheet" href="${res}/css/font-awesome.min.css" />

		<!-- text fonts -->
		<link rel="stylesheet" href="${res}/css/ace-fonts.css" />

		<!-- ace styles -->
		<link rel="stylesheet" href="${res}/css/ace.min.css" />

		<!--[if lte IE 9]>
			<link rel="stylesheet" href="${res}/css/ace-part2.min.css" />
		<![endif]-->
		<link rel="stylesheet" href="${res}/css/ace-rtl.min.css" />

		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="${res}/css/ace-ie.min.css" />
		<![endif]-->
		<link rel="stylesheet" href="${res}/css/ace.onpage-help.css" />

		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

		<!--[if lt IE 9]>
		<script src="${res}/js/html5shiv.js"></script>
		<script src="${res}/js/respond.min.js"></script>
		<![endif]-->
		
		<link rel="stylesheet" href="${my}/css/commons.css" />
	</head>

	<body class="login-layout light-login">
		<div class="main-container">
			<div class="main-content">
				<div class="row">
					<div class="col-sm-10 col-sm-offset-1">
						<div class="login-container">
							<div class="center">
								<h1>
									<i class="ace-icon fa fa-leaf green"></i>
									<span class="red">慈海云健康</span>
									<span class="grey" id="id-text2">管理平台</span>
								</h1>
							</div>

							<div class="space-6"></div>

							<div class="position-relative">
								<div id="login-box" class="login-box visible widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header blue lighter bigger">
												<i class="ace-icon fa fa-coffee green"></i>
												请输入你的信息
											</h4>

											<div class="space-6"></div>

											<form id="login-form" action="${ctx}/login" method="post">
												<fieldset>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" name="userName" class="form-control" placeholder="用户名" />
															<i class="ace-icon fa fa-user"></i>
														</span>
													</label>

													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" name="password" class="form-control" placeholder="密码" />
															<i class="ace-icon fa fa-lock"></i>
														</span>
													</label>
													
													<%--
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" class="form-control required" id="catpcha" name="captcha" placeholder="验证码" maxlength="4" />
															<i class="ace-icon">
															    <input type="hidden" name="captchaToken" value="${captchaToken}" />
																<img id="captcha-img" src="${ctx}/captcha?captchaToken=${captchaToken}" onclick="this.src='${ctx}/captcha?captchaToken=${captchaToken}&d='+new Date().getTime()" style="cursor: pointer" />
															</i>
														</span>
													</label> --%>

													<div class="space"></div>

													<div class="clearfix">
														<!-- <label class="inline">
															<input type="checkbox" class="ace" />
															<span class="lbl"> Remember Me</span>
														</label> -->

														<button id="login-btn" type="button" class="width-35 pull-right btn btn-sm btn-primary">
															<i class="ace-icon fa fa-key"></i>
															<span class="bigger-110">登录</span>
														</button>
													</div>

													<div class="space-4"></div>
												</fieldset>
											</form>

										</div><!-- /.widget-main -->

									</div><!-- /.widget-body -->
								</div><!-- /.login-box -->

							</div><!-- /.position-relative -->
						</div>
					</div><!-- /.col -->
				</div><!-- /.row -->
			</div><!-- /.main-content -->
		</div><!-- /.main-container -->

		<!-- basic scripts -->
		<script type="text/javascript" src="${res}/js/jquery1x.min.js"></script>
		<script type="text/javascript" src="${res}/js/jquery.form.min.js"></script>

		<!-- inline scripts related to this page -->
		 
		<script type="text/javascript">
			$(document).ready(function() {
				$("#login-btn").click(function() {
					$("#login-form").ajaxSubmit(function(result) {
						if (result.success) {
							alert('success');
							var redirectUrl = result.data || "${empty ctx ? '/' : ctx}"; 
							window.location.href = redirectUrl;
						} else {
							alert('error');
							alert(result.msg);
							<%-- $("#captcha-img").click();--%>
						}
					});
				});
			});
		</script>
	</body>
</html>