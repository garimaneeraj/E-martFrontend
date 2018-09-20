<%@include file="header.jsp" %>

	<!-- Carousel style-->
	<style>
/* CUSTOMIZE THE CAROUSEL
-------------------------------------------------- */

/*Swiper*/
<style>
.carousel-inner > .item >img,
.carousel-inner > .item > a >img{
width:40%;
margin:auto;
}

.carousel-caption{
font-size:24px;
color:red;
}
.carousel-caption h4{
font-size:32px;}

#features{
text-align:center;}

#features img{
margin:0 0 20px;}
.swiper-container {
	width: 100%;
	height: 500px;
}
.swiper-slide {
	text-align: center;
	font-size: 18px;
	background: #fff;
	/* Center slide text vertically */
	display: -webkit-box;
	display: -ms-flexbox;
	display: -webkit-flex;
	display: flex;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	-webkit-justify-content: center;
	justify-content: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	-webkit-align-items: center;
	align-items: center;
}
.main-slider .slider-bg-position {
	background-size: cover!important;
	background-position: center center!important;
}
.main-slider .swiper-button-prev, .main-slider .swiper-button-next {
	background-image: none!important;
	color: #fff;
	width: 50px;
	height: 50px;
	border: 1px solid #fff;
	text-align: center;
	line-height: 50px;
	font-size: 20px;
}
.main-slider h2 {
	color: #fff;
	font-size: 54px;
	line-height: 59px;
	padding: 0 19%;
	text-transform: uppercase;
}
.main-slider .swiper-pagination-bullet {
	width: 20px;
	height: 20px;
	background: rgba(255,255,255,0.9)
}
.main-slider .swiper-pagination-bullet-active {
	background: #0297ff
}


var swiper = new Swiper('.swiper-container', {
        pagination: '.swiper-pagination',
        nextButton: '.swiper-button-next',
        prevButton: '.swiper-button-prev',
        paginationClickable: true,
        centeredSlides: true,
        autoplay: 3500,
           speed: 1500,
           loop: true,
        autoplayDisableOnInteraction: false
    });
    

</style>

	<!--container-->
	<div class="container">


		<!--carousel-->
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
			</ol>

			<div class="swiper-container main-slider" id="myCarousel">
  <div class="swiper-wrapper">
    <div class="swiper-slide slider-bg-position"><img src="${pageContext.request.contextPath}/resources/images/image2.jpg">
      <h2>If you take any world problem, any issue on the planet the solution to that problem certainly includes education. In education, the roadblock is the laptop.</h2>
    </div>
    <div class="swiper-slide slider-bg-position"><img src="${pageContext.request.contextPath}/resources/images/img2.jpg">
      <h2>Ur mobile device quickly has become the easiest portal into ur digital use</h2>
    </div>
    <div class="swiper-slide slider-bg-position"><img src="${pageContext.request.contextPath}/resources/images/img3.jpg">
      <h2>Smart Watch: It is the best companion for ur smartphone</h2>
    </div>
  </div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>

		</div>
		<!-- corousel end -->

		<br>
		<div class="row" id="featuresHeading">
			<div class="col-12">
				<h2>Check Out the latest and the very Best...</h2>
				<p>Exciting Offers on the Way......Let ur heart wanting more and
					more....</p>
			</div>

			<br>
			<div class="row" id="features">
				<div class="col-sm-4 feature">
					<div class="panel">
						<div class="panel-heading">
							<h3 class="panel-title">Mobiles</h3>
						</div>
						<img src="image1.jpg" alt="Mobiles for u" class="img-circle">
						</p>
						Offers so fresh....u wouldn't stop looking for
						more....Want to see more<br> <a href="#" target="_blank">Click
							me</a>
						</p>
					</div>
				</div>

				<div class="col-sm-4 feature">
					<div class="panel">
						<div class="panel-heading">
							<h3 class="panel-title">Laptops</h3>
						</div>
						<img src="image2.jpg" alt="hp" class="img-circle">
						</p>
						Something for all age groups<br> <a href="#" target="_blank">Click
							me</a>
						</p>
					</div>
				</div>

				<div class="col-sm-4 feature">
					<div class="panel">
						<div class="panel-heading">
							<h3 class="panel-title">Gadget Gurus and Everyday shoppers</h3>
						</div>
						<img src="image3.jpg" alt="Gadegts" class="img-circle">
						</p>
						One stop solution to all ur gadegt needs<br> <a href="#"
							target="_blank">Click me</a>
						</p>
					</div>
				</div>
				
<div class="row" id="featuresHeading">
			<div class="col-12">
				<h2><center>Our Products</center></h2>
				<p>Exciting Offers on the Way......Let ur heart wanting more and
					more....</p>
			</div>

			<br>
			
			
			<c:if test="${!empty products}">
			<c:forEach items="${products}" var="product">
			<div class="row" id="features">
				<div class="col-sm-4 feature">
					<div class="panel">
						<div class="panel-heading">
						
							<h3 class="panel-title">${product.productName}</h3>
						</div>
						<img src="<c:url value='/resources/images/${product.productId}.png'/>" height="150" width="150"/>
						</p>
						${product.productDesc}<br> <a href="ProductDetail/${product.productId}">Click
							me</a>
						</p>
					</div>
				</div>
				</c:forEach>
				</c:if>

				

			</div>
			<%@include file="footer.jsp" %>