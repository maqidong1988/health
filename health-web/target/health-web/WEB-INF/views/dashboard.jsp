<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false"  %>
<%@ include file="../commons/res/taglibs.jsp" %>

<!-- ajax layout which only needs content area -->
<div class="page-header">
	<h1>
		工作面板
		<small>
			<i class="ace-icon fa fa-angle-double-right"></i>
			概览 &amp; 统计
		</small>
	</h1>
</div><!-- /.page-header -->

<div class="row">
	<div class="col-xs-12">
		<!-- PAGE CONTENT BEGINS -->
		<div class="alert alert-block alert-success">
			<button type="button" class="close" data-dismiss="alert">
				<i class="ace-icon fa fa-times"></i>
			</button>

			<i class="ace-icon fa fa-check green"></i>

			Welcome to
			<strong class="green">
				Ace
				<small>(v1.3.1)</small>
			</strong>,
   	the lightweight, feature-rich and easy to use admin template.
		</div>
		<!-- PAGE CONTENT ENDS -->
	</div><!-- /.col -->
</div><!-- /.row -->

<!-- page specific plugin scripts -->
<script type="text/javascript">
	ace.load_ajax_scripts([], function() {
		
	});
</script>