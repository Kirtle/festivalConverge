<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="ck" uri="http://ckeditor.com"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:include page="frame/Header.jsp"></jsp:include>
<div class="container">
    <div style="height: 3%"></div>
    <div class="row">
        <div class="col-sm-9 jumbotron">
        	<div class="panel-heading"><h4 class="panel-title">留言板:</h4></div>
	   			<form role="form" id="addBbs" name="addBbs" method="post" onsubmit="return isValidate2(addBbs)">
					<div class="form-group">
						<input type="hidden" name="time" id="time">
						<input type="hidden" name="user_id" id="user_id" value="${user.id}"> 
						<input type="hidden" name="busername" id="busername" value="${user.username}"> 
						<textarea class="form-control" rows="3" name="content" id="content"></textarea>
						<ck:replace replace="content" basePath="ckeditor"></ck:replace>
					</div>
					<input type="submit" class="btn btn-primary" value="留言"></input>
				</form>
			
				<div id="bbs">
					<c:choose>
        				<c:when test="${bbs!=null && fn:length(bbs)>0}">
        				<br>
	        				<c:forEach items="${bbs}" var="bbs">
	        					<div class="panel">
	        					<p style="float:right">
	        					<a href="${pageContext.request.contextPath}/userInfo?id=${bbs.user_id }">${bbs.username}</a>&nbsp;&nbsp;&nbsp;&nbsp;${bbs.time}留言&nbsp;&nbsp;&nbsp;&nbsp;
	        					</p>
	        					<p style="float:left ">${bbs.content}</p></div>
	        				</c:forEach>
        				</c:when>
	        			<c:otherwise>
	        				暂无留言!
	        			</c:otherwise>
        			</c:choose>
				</div>
						
							
							
        </div>
        <div class="col-sm-3 hidden-xs panel-group" id="accordion">
            <div class="easyui-fullCalendar" style="height:400%;width: 400%" ></div>
		
            <div class="panel">
                <h3 class="page-header"  data-toggle="collapse" data-parent="#accordion"  href="#collapse2">文章Top5</h3>
                <ul id="collapse2" class="nav nav-tabs nav-stacked panel-collapse collapse">
                    <c:choose>
                		<c:when test="${articleTop!=null && fn:length(articleTop)>0}">
                			<c:forEach items="${articleTop}" var="artT">
		                    	<li><a style="color:gray" href="${pageContext.request.contextPath}/article?id=${artT.articleid}">${artT.title}</a></li>
		                    </c:forEach>
		                </c:when>
		                <c:otherwise>
	                		<li><a style="color:gray" href="">暂无文章</a></li> 
		                </c:otherwise>
                    </c:choose>
                </ul>
            </div>
        </div>
    </div>	
</div>
<jsp:include page="frame/Footer.jsp"></jsp:include>

<script type="text/javascript">

</script>