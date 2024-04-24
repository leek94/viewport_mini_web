<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>
<!-- Bootstrap 5를 위한 외부 라이브러리 설정 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<!-- jQuery 외부 라이브러리 설정 -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/nav.css">
<!-- 아이콘 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<!-- css 설정 -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/styles.css">
</head>
<body>
	<%@ include file="/WEB-INF/views/common/nav.jsp"%>
	<section class="container">
		<div class="row no-gutters row-cols-3 gx-0">
			<div class="col m-1 image-box" style="width: 416px; height: 564px" data-bs-toggle="modal" data-bs-target="#myModal">
				<img src="https://web-resource.gentlemonster.com/event/1712297920.jpg" class="card-img" height="100%" width="100%" />
			</div>
			<div class="col m-1 image-box" style="width: 416px; height: 564px" data-bs-toggle="modal" data-bs-target="#myModal">
				<img src="https://web-resource.gentlemonster.com/event/1712299527.jpg" class="card-img" height="100%" width="100%" />
			</div>
			<div class="col m-1 image-box" style="width: 416px; height: 564px" data-bs-toggle="modal" data-bs-target="#myModal">
				<img src="https://web-resource.gentlemonster.com/event/1712299602.jpg" class="card-img" height="100%" width="100%" />
			</div>
			<div class="col m-1 image-box" style="width: 416px; height: 564px" data-bs-toggle="modal" data-bs-target="#myModal">
				<img src="https://web-resource.gentlemonster.com/event/1702951231.jpg" class="card-img" height="100%" width="100%" />
			</div>
			<div class="col m-1 image-box" style="width: 416px; height: 564px" data-bs-toggle="modal" data-bs-target="#myModal">
				<img src="https://web-resource.gentlemonster.com/event/1695705698.jpg" class="card-img" height="100%" width="100%" />
			</div>
			<div class="col m-1 image-box" style="width: 416px; height: 564px" data-bs-toggle="modal" data-bs-target="#myModal">
				<img src="https://web-resource.gentlemonster.com/event/1700704228.jpg" class="card-img" height="100%" width="100%" />
			</div>
		</div>
	</section>
	<!-- The Modal -->
	<div class="modal fade " id="myModal">
		<div class="modal-dialog modal-lg modal-dialog-centered">
			<div class="modal-content rounded-0">
				<!-- Modal Header -->
				<div class="modal-header border-0">

					<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
				</div>

				<!-- Modal body -->
				<div class="modal-body">
					<div class="d-flex flex-row justify-content-center">
						<img src="https://web-resource.gentlemonster.com/event/1700704228.jpg" class="card-img row-2" style="width: 50%" />
						<div class="row-2 item-info-box text-center ">
							<img src="https://www-prd-kr.gentlemonster.com/media/catalog/product/cache/6c6f229b8a7ab97f51028776641e27d1/h/u/hush-01_2_1.jpg" class="card-img row-2" style="width: 50%" />
							<div class="text-center">Eq02</div>
							<div class="text-center">300,000원</div>
							<div class="btn btn-outline-dark ">
								<span>구매하기</span>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>