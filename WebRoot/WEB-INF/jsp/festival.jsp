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
        <div class="col-sm-9">
           <c:choose>
           		<c:when test="${festival!=null}">
           		 	<h2>${festival.fname}:</h2>
           		 	<ol class="breadcrumb">
					  <li><a href="#forigin">节日起源</a></li>
					  <li><a href="#fprogress">节日发展</a></li>
					  <li><a href="#fcustom">节日习俗</a></li>
					  <li><a href="#feffect">社会影响</a></li>
					  <li><a href="#fprogress">节日发展</a></li>
					  <li><a href="#fliterature">文学记述</a></li>
					  <li><a href="#fother">其他</a></li>
					  <!-- <li class="active">Data</li> -->
					</ol>
           		    <hr/>
           		    <a class="breadcrumb" href="#articlelist">相关文章列表   <span class="glyphicon glyphicon-hand-left" aria-hidden="true"></span></a>
           		    <div class="">
           		    	<div id="forigin" style="height: 30px"> </div>
			        	<h3>节日起源：</h3>
			        	   <p>${festival.forigin}</p>
		        	</div>
		       		
		       		<div class="">
		       			<div id="fprogress" style="height: 30px"> </div>
			       		<h3>节日发展：</h3>
			        	   <p>${festival.fprogress}</p>
		        	</div>
		       		
		       		<div>
		       		<div id="fcustom" style="height: 30px"> </div>
			       		<h3>节日习俗：</h3>
			        	  <p>${festival.fcustom}</p>
		        	</div>
		       		
		       		<div>
		       		<div id="feffect" style="height: 30px"> </div>
			       		<h3>社会影响：</h3>
			        	   <p>${festival.feffect}</p>
		        	</div>
		       		
		       		<div>
		       		<div  id="fliterature" style="height: 30px"> </div>
			       		<h3>文学记述：</h3>
			        	   <p>${festival.fliterature}</p>
		        	</div>
		       		
		       		<div>
		       			<div id="fother" style="height: 30px"> </div>
			       		<h3 >其他：</h3>
			        	   <p>${festival.fother}</p>
		        	</div>
		        	
						<table class="table table-hover">
						<div id="articlelist" style="height: 30px"></div>
						<h4>相关文章列表:</h4>
						<c:forEach items="${articles}" var="art">
							<tr>
							<td align="center"><a href="${pageContext.request.contextPath}/article?id=${art.articleid}">${art.title }</a></td>
							<td align="center"><a href="${pageContext.request.contextPath}/userInfo?id=${art.user_id}">${art.username }</a>于 ${art.publish_time} 上传</td>

							</tr>
						</c:forEach>
						</table>
					
           		</c:when>
           		<c:otherwise>
        			无
        		</c:otherwise>
           </c:choose>
        
     			
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