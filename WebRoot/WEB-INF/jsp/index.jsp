 <%@ page language="java" import="java.util.*" import="cn.fc.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<jsp:include page="frame/Header.jsp"></jsp:include>
<style type="text/css">
img{width:150px;height:190px;margin-left: 70px;margin-top: 5px;margin-bottom: 25px;margin-right: 70px;float:left;}
 p{margin-left: 70px;margin-top: 25px;margin-right: 70px;margin-bottom: 25px;font-size: 14px;text-indent:2em;color:black;}
 .div{
 border: 1px solid gray;border-bottom:2px solid gray;border-right:2px solid gray; background: #F0F0F0;height: 200px;
 }

</style>
<div class="container">
    <div style="height: 6%"></div>
    <div class="row">
        <div class="col-sm-9">
          <%--  <div class="row center-block thumbnail"style="width:90% ">
               <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                   <!-- Indicators指示器 -->
                   <ol class="carousel-indicators">
                       <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                       <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                       <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                   </ol>

                   <!-- Wrapper for slides -->
                   <div class="carousel-inner" role="listbox">
                   		<c:choose>
							<c:when test="${articles1!=null && fn:length(articles1)>0}">
								<div id="summaryc" class="item active">
		                           <a href="${pageContext.request.contextPath}/article?id=${articles1[0].articleid}">${articles1[0].summary }</a>
		                           <div class="carousel-caption">
		                           		<a href="${pageContext.request.contextPath}/article?id=${articles1[0].articleid}">${articles1[0].title}</a>
		                           </div>
		                       </div>
		                       <div id="summaryc" class="item">
		                           <a href="${pageContext.request.contextPath}/article?id=${articles1[1].articleid}">${articles1[1].summary }</a>
		                           <div class="carousel-caption">
		                           		<a href="${pageContext.request.contextPath}/article?id=${articles1[1].articleid}">${articles1[1].title}</a>
		                           </div>
		                       </div>
		                       <div id="summaryc" class="item">
		                           <a href="${pageContext.request.contextPath}/article?id=${articles1[2].articleid}">${articles1[2].summary }</a>
		                           <div class="carousel-caption">
		                           		<a href="${pageContext.request.contextPath}/article?id=${articles1[2].articleid}">${articles1[2].title}</a>
		                           </div>
		                       </div>
							</c:when>
						</c:choose>
                       
                   </div>

                   <!-- Controls -->
                   <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                       <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                       <span class="sr-only">Previous</span>
                   </a>
                   <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                       <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                       <span class="sr-only">Next</span>
                   </a>
               </div>
           </div>
           
           <c:choose>
					<c:when test="${articles2!=null && fn:length(articles2)>0}">
						<c:forEach items="${articles2}" var="art">
							<h3><a href="${pageContext.request.contextPath}/article?id=${art.articleid}">${art.title }</a></h3>
							<p>
								<i class="glyphicon glyphicon-user"></i><a href="${pageContext.request.contextPath}/userInfo?id=${art.user_id }">${art.username }</a> |
								<i class="glyphicon glyphicon-calendar"></i> ${art.publish_time} |
								<i class="glyphicon glyphicon-eye-open"></i> ${art.count }
							</p>
							<div id="summaryc" class=" thumbnail">
							
							<a href="${pageContext.request.contextPath}/article?id=${art.articleid}">${art.summary }</a>
							</div>
							
							<br>
							<a class="btn btn-primary" href="${pageContext.request.contextPath}/article?id=${art.articleid}">Read
								More <span class="glyphicon glyphicon-chevron-right"></span>
							</a>
							<hr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<p>没有更多文章了哟~</p>
					</c:otherwise>
			</c:choose>
		   <!-- pager -->
           <ul class="pager">
	            <c:if test="${page.pageNo >1}">
	                <div class="col-sm-6"><li><a  href="${pageContext.request.contextPath}?pageNo=${page.pageNo-1}">上一页</a></li></div>
	            </c:if>
	            <c:if test="${page.pageNo <(totalPage/page.pageSize)}">
	                <div class="col-sm-6"><li><a href="${pageContext.request.contextPath}?pageNo=${page.pageNo+1}">下一页 </a></li></div>
	            </c:if>
           </ul> --%>
			
			<a  href="${pageContext.request.contextPath}/festival?id=1" >
			<div class="div" >
			<img alt="春节" src="${pageContext.request.contextPath }/img/春节.jpg">
			<p>	春节是中华民族最隆重的传统佳节，同时也是中国人情感得以释放、心理诉求得以满足的
			重要载体，是中华民族一年一度的狂欢节和永远的精神支柱。春节与清明节、端午节、中
			秋节并称为中国四大传统节日,在春节期间，中国的汉族和一些少数民族都要举行各种庆
			祝活动。这些活动均以祭祀祖神、祭奠祖先、除旧布新、迎禧接福、祈求丰年为主要内容，
			形式丰富多彩，带有浓郁的各民族特色。人们在春节这一天都尽可能地回到家里和亲人团聚，表达
			对未来一年的热切期盼和对新一年生活的美好祝福。</p>
			</div></a>
			<hr/>
			<a  href="${pageContext.request.contextPath}/festival?id=2" >
			<div class="div">
			<img alt="元宵节" src="${pageContext.request.contextPath }/img/元宵节.jpg">
			<p>	元宵节是农历新年的第一个月圆之夜，象征着春天的到来，人们吃元宵、赏花灯、猜灯谜，
                        祝贺。是我国一个重要的传统节日。这一天古代称为“上元”，其夜则称“元夜”、“元夕”或“元宵”。
                        我国古代的历法和月相有密切的关系，每月十五日必逢满月，叫做“望”。满月象征着团圆美满，
                        在正月十五人们迎来了一年之中第一个月满之夜，这一天理所当然地被看作是吉日。据《史记•
                        乐书》记载，早在西汉初期，宫廷中就有了正月十五祭祀太乙神(天帝)，祈求福佑的礼仪活动。
                        元宵节是春节之后的第一个重要节日。</p>
			</div>
			</a>
			<hr/>
			<a  href="${pageContext.request.contextPath}/festival?id=3" >
			<div class="div">
			<img alt="清明节" src="${pageContext.request.contextPath }/img/清明节.jpg">
			<p>	清明节又叫踏青节，在仲春与暮春之交。是中国传统节日，也是最重要的祭祀节日之一，
			是祭祖和扫墓的日子。中华民族传统的清明节大约始于周代，距今已有二千五百多年的历史。
			清明节是中国重要的“时年八节”之一，一般是在公历4月5号前后，节期很长，有10日前8日
			后及10日前10日后两种说法，这近20天内均属清明节。清明节原是指春分后十五天，1935
			年中华民国政府明定4月5日为国定假日清明节，也叫做民族扫墓节。</p>
			</div>
			</a>
			<hr/>
			<a  href="${pageContext.request.contextPath}/festival?id=4" >
			<div class="div">
			<img alt="端午节" src="${pageContext.request.contextPath }/img/端午节.jpg">
			<p>	端午节，为每年农历五月初五。据《荆楚岁时记》记载，因仲夏登高，顺阳在上，五月是
			仲夏，它的第一个午日正是登高顺阳好天气之日，故五月初五亦称为“端阳节”。此外端午节还
			称“午日节、五月节、龙舟节、浴兰节、诗人节”等。端午节是流行于中国以及汉字文化圈诸国
			的传统文化节日。</p>
			</div>
			</a>
			<hr/>
			<a  href="${pageContext.request.contextPath}/festival?id=5" >
			<div class="div">
			<img alt="七夕节" src="${pageContext.request.contextPath }/img/七夕.jpg">
			<p>	七夕节是农历七月初七，又名乞巧节、七巧节或七姐诞。七夕始于汉朝，是流行于中国
			及汉字文化圈诸国的传统文化节日。相传农历七月七日夜或七月六日夜妇女在庭院向织女星乞
			求智巧，故称为“乞巧”。其起源于对自然的崇拜及妇女穿针乞巧，后被赋予了牛郎织女的传说
			使其成为象征爱情的节日。七夕节妇女穿针乞巧、祈祷福禄寿、礼拜七姐、陈列花果、女红
			（gōng）等诸多习俗影响至日本、朝鲜半岛、越南等汉字文化圈国家。</p>
			</div>
			</a>
			<hr/>
			<a  href="${pageContext.request.contextPath}/festival?id=6" >
			<div class="div">
			<img alt="中秋节" src="${pageContext.request.contextPath }/img/中秋.jpg">
			<p>	中秋节是流行于中国众多民族与汉字文化圈诸国的传统文化节日，时在农历八月十五；
			因其恰值三秋之半，故名，也有些地方将中秋节定在八月十六。受中华文化的影响，中秋节也是
			东亚和东南亚一些国家尤其是当地的华人华侨的传统节日。中秋节自古便有
			祭月、赏月、拜月、吃月饼、赏桂花、饮桂花酒等习俗，流传至今，经久不息。中秋节以月
			之圆兆人之团圆，为寄托思念故乡，思念亲人之情，祈盼丰收、幸福，成为丰富多彩、弥足
			珍贵的文化遗产。中秋节与端午节、春节、清明节并称为中国四大传统节日。</p>
			</div>
			</a>
			<hr/>
			<a  href="${pageContext.request.contextPath}/festival?id=7" >
			<div class="div">
			<img alt="除夕" src="${pageContext.request.contextPath }/img/除夕.jpg">
			<p>	除夕，又称大年夜等。是时值每年农历腊月的最后一个晚上。除，即去除的之意；
			夕，指夜晚。除夕也就是辞旧迎新、一元复始、万象更新的节日。与清明节、中元节、重阳节三节
			是中国传统的祭祖大节，也是流行于汉字文化圈诸国的传统文化节日。除夕因常在夏历腊月二十九
			或三十日，故又称该日为大年三十，是中国最重要的传统节日之一。民间最为重视。家家户户忙忙
			碌碌或清扫庭舍，迎祖宗回家过年，并以年糕、三牲奉祀。除夕自古就有通宵不眠、守岁、贴门神、
			贴春联、贴年画、挂灯笼等习俗，流传至今，经久不息，受汉文化的影响，除夕也是汉字文化圈国
			家以及世界各地华人华侨的传统节日。</p>
			</div>
			</a>
			<hr/>
			
			
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
            <%-- <div class="panel">
                <h3 class="page-header" data-toggle="collapse" data-parent="#accordion" href="#collapse1">文章分类</h3>
                <ul id="collapse1" class="nav nav-tabs nav-stacked panel-collapse collapse in">
                	<c:choose>
                		<c:when test="${sys_category!=null && fn:length(sys_category)>0}">
                			<c:forEach items="${sys_category}" var="sc">
		                    	<li><a style="color:gray" href="${pageContext.request.contextPath}/articleBySc?id=${sc.id}">${sc.category_name}</a></li>
		                    </c:forEach>
		                </c:when>
		                <c:otherwise>
	                		<li><a style="color:gray" href="#">暂无分类</a></li>
		                </c:otherwise>
                    </c:choose>
                </ul>
            </div> --%>
            
        </div>
    </div>
</div>

<jsp:include page="frame/Footer.jsp"></jsp:include>
<style type="text/css">
#summaryc p img{
	width:100% ;
	height:100%;
}
</style>