<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>


<!-- /. NAV SIDE  -->
<div class="page-content-wrapper">
	<div class="page-content">
		<!-- BEGIN PAGE CONTENT-->
		<div class="row">
			<div class="col-md-12">
				<h2>Chỉnh sửa danh mục</h2>
				<h5>Nơi bạn có thể chỉnh sửa thông tin danh mục</h5>
			</div>
		</div>
		<!-- /. ROW  -->
		<hr />
		<div class="row">
			<div class="col-md-12">
				<!-- Form Elements -->
				<div class="panel panel-default">
					<div class="panel-heading">Chỉnh sửa danh mục</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-md-6">
								<h3>Danh mục:</h3>
								<c:url value="/admin/category/edit" var="edit"></c:url>
								<form role="form" action="${edit}" method="post"
									enctype="multipart/form-data">
									<input name="id" value="${category.cate_id }" hidden="">
									<div class="form-group">
										<label>Tên danh sách:</label> <input type="text"
											class="form-control" value="${category.cname }" name="name" />
									</div>

									<input type="radio" id="postageyes" name="postage" value="Yes" />
									Chèn link ảnh <br /> <input type="radio" id="postageno"
										name="postage" value="No" /> Tải ảnh <br />

									<c:set var="string1" value="${category.icons}" />
									<c:choose>
										<c:when test="${string2 =='cate'}">
											<c:url value="/image?fname=${category.icons}" var="imgUrl"></c:url>
										</c:when>
										<c:otherwise>
											<c:url value="${category.icons}" var="imgUrl"></c:url>
										</c:otherwise>
									</c:choose>

									<img src=${category.icons } class="img-responsive" width="100px"
										alt=""> <br />
									<div class="form-group" id="anh" hidden="hidden">
										<label>Ảnh đại diện</label> <input id="inputicon" type="file"
											name="icon" value="${category.icons }" />
									</div>
									<button type="submit" class="btn btn-default">Edit</button>
									<button type="reset" class="btn btn-primary">Reset</button>
								</form>


							</div>
						</div>
					</div>
				</div>
				<!-- End Form Elements -->
			</div>
		</div>
		<!-- /. ROW  -->
		<div class="row">
			<div class="col-md-12"></div>
		</div>
		<!-- /. ROW  -->
	</div>
	<!-- /. PAGE INNER  -->
</div>
<!-- /. PAGE WRAPPER  -->

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script>
	$('input:radio[name="postage"]').change(function() {
		if ($(this).is(':checked') && $(this).val() == 'Yes') {
			$("#anh").removeAttr("hidden")
			$("#inputicon").attr("type", "text")
			$("#inputicon").attr("name", "imagelink")
		}
		if ($(this).is(':checked') && $(this).val() == 'No') {
			$("#anh").removeAttr("hidden")

			$("#inputicon").attr("type", "file")
			$("#inputicon").attr("name", "icons")
		}

	});
</script>