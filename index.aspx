<%@ Register TagPrefix="uc1" TagName="thead" Src="thead.ascx" %>
<%@ Register TagPrefix="uc1" TagName="tfoot" Src="tfoot.ascx" %>
<%@ Page Language="C#"  CodeFile="index.aspx.cs" Inherits="index" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
          <uc1:thead id="thead1" runat="server"></uc1:thead>
<!-- banner -->
	<div class="banner">
		<div class="container">
			<div class="banner-info animated wow zoomIn" data-wow-delay=".5s">
				<h3>travel shop</h3>
				<h4>低至<span>50% <i>Off/-</i></span></h4>
				<div class="wmuSlider example1">
					<div class="wmuSliderWrapper">
						<article style="position: absolute; width: 100%; opacity: 0;"> 
							<div class="banner-wrap">
								<div class="banner-info1">
									<p>机票 + 门票 +火车票</p>
								</div>
							</div>
						</article>
						<article style="position: absolute; width: 100%; opacity: 0;"> 
							<div class="banner-wrap">
								<div class="banner-info1">
									<p>攻略 + 团购 +度假</p>
								</div>
							</div>
						</article>
						<article style="position: absolute; width: 100%; opacity: 0;"> 
							<div class="banner-wrap">
								<div class="banner-info1">
									<p>酒店 +公寓 +车车</p>
								</div>
							</div>
						</article>
					</div>
				</div>
					<script src="js/jquery.wmuSlider.js"></script> 
					<script>
						$('.example1').wmuSlider();         
					</script> 
			</div>
		</div>
	</div>
<!-- //banner -->
<!-- banner-bottom -->
	<div class="banner-bottom">
		<div class="container"> 
			<div class="banner-bottom-grids">
			<center><table>
				<tr>
				<th><div class="banner-bottom-grid-left animated wow slideInLeft" data-wow-delay=".5s" margin:102px; 1002px 102px 102px;>
					<div class="grid">
						<figure class="effect-julia">
							<img src="images/dibai.jpg" alt=" " width="500" height="280" class="img-responsive" />
							<figcaption>
								<h3>迪拜</h3>
							</figcaption>			
					  </figure>
					</div>
				</div></th>
				
				<th>
				<div class="banner-bottom-grid-left animated wow slideInLeft" data-wow-delay=".5s">
					<div class="grid">
						<figure class="effect-julia">
							<img src="images/balidao.jpg" alt=" " width="500" height="280" class="img-responsive" />
							<figcaption>
								<h3>巴厘岛</h3>
							</figcaption>			
					  </figure>
					</div>
				</div></th></tr>
				</table></center>
				
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //banner-bottom -->
<!-- banner-bottom -->
	<div class="banner-bottom">
		<div class="container"> 
			<div class="banner-bottom-grids">
			<center><table>
				<tr>
				<th><div class="banner-bottom-grid-left animated wow slideInLeft" data-wow-delay=".5s" margin:102px; 1002px 102px 102px;>
					<div class="grid">
						<figure class="effect-julia">
							<img src="images/dongjing.jpg" alt=" " width="500" height="280" class="img-responsive" />
							<figcaption>
								<h3>东京</h3>
							</figcaption>			
					  </figure>
					</div>
				</div></th>
				
				<th>
				<div class="banner-bottom-grid-left animated wow slideInLeft" data-wow-delay=".5s">
					<div class="grid">
						<figure class="effect-julia">
							<img src="images/jiazhou.jpg" alt=" " width="500" height="280" class="img-responsive" />
							<figcaption>
								<h3>加州</h3>
							</figcaption>			
					  </figure>
					</div>
				</div></th></tr>
				</table></center>
				
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //banner-bottom -->

          <uc1:tfoot id="tfoot1" runat="server"></uc1:tfoot>
    </form>
</body>
</html>
