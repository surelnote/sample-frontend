<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>jQuery UI Accordion - Default functionality</title>
	<link rel="stylesheet" href="/css/style.css">
	
	<link href="/webjars/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<script src="/webjars/jquery/jquery.min.js"></script>
	<script src="/webjars/jquery-ui/jquery-ui.min.js"></script>

	<script type="text/javascript">
		$( document ).ready(function() {
			$("#backendcall").click(
				function () {
					$.ajax({ 
						type: 'get', 
						url: '/fulfilment/sampleEntities/1' , 
						dataType : 'json' , 
						beforeSend: function (xhr) {
							xhr.setRequestHeader ("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJyZWdEYXRlIjp7ImRheU9mTW9udGgiOjMsImRheU9mV2VlayI6Ik1PTkRBWSIsImRheU9mWWVhciI6MzQsIm1vbnRoIjoiRkVCUlVBUlkiLCJ5ZWFyIjoyMDIwLCJtb250aFZhbHVlIjoyLCJob3VyIjoxNywibWludXRlIjo1MywibmFubyI6ODgwMDAwMDAwLCJzZWNvbmQiOjQ5LCJjaHJvbm9sb2d5Ijp7ImlkIjoiSVNPIiwiY2FsZW5kYXJUeXBlIjoiaXNvODYwMSJ9fSwiYWxnIjoiSFMyNTYifQ.eyJzdWIiOiJqd3Rfc3ViamVjdCIsImp3dF9rZXkiOnsiY3JlYXRlVGltZSI6IjIwMjAtMDItMDMgMTY6MTE6MTAiLCJ1cGRhdGVUaW1lIjoiMjAyMC0wMi0wMyAxNjoxMToxMCIsImNyZWF0ZVVzZXIiOiJQSkoyMjIyIiwidXBkYXRlVXNlciI6IlBKSjIyMjIiLCJpZCI6MSwidXNlcklkIjoic3VyZWwiLCJ1c2VyTmFtZSI6IlBKSiIsInBhc3N3b3JkIjoiMTExMSIsInNjb3JlcyI6bnVsbCwic2FtcGxlRW50aXR5Q2hpbGRzIjpudWxsLCJkZWxldGVkIjpmYWxzZX19.RC01WoVPU_GD1z2gFGhog_YRSCRI_-iwCw9MnhPD9yM");
						},
						success: function(data) {
							console.log(data);
							$("#idDiv").html("id: " + data.id);
							$("#userId").html("userId: " + data.userId);
							$("#userName").html("userName: " + data.userName);
							$("#createTime").html("createTime: " + data.createTime);
							$("#createUser").html("createUser: " + data.createUser);
							$("#updateTime").html("updateTime: " + data.updateTime);
						} 
					});
				});

				funcTestList();

				$(document).on("click","#btn_comment",function(){
					$.ajax({ 
						type: 'post'
						, url: '/fulfilment/test/insert' 
						, dataType : 'json'
						, contentType : "application/json"
						, data : '{"comment" : "' + $("#val_comment").val() + '"}'
						, beforeSend: function (xhr) {
							xhr.setRequestHeader ("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJyZWdEYXRlIjp7ImRheU9mTW9udGgiOjMsImRheU9mV2VlayI6Ik1PTkRBWSIsImRheU9mWWVhciI6MzQsIm1vbnRoIjoiRkVCUlVBUlkiLCJ5ZWFyIjoyMDIwLCJtb250aFZhbHVlIjoyLCJob3VyIjoxNywibWludXRlIjo1MywibmFubyI6ODgwMDAwMDAwLCJzZWNvbmQiOjQ5LCJjaHJvbm9sb2d5Ijp7ImlkIjoiSVNPIiwiY2FsZW5kYXJUeXBlIjoiaXNvODYwMSJ9fSwiYWxnIjoiSFMyNTYifQ.eyJzdWIiOiJqd3Rfc3ViamVjdCIsImp3dF9rZXkiOnsiY3JlYXRlVGltZSI6IjIwMjAtMDItMDMgMTY6MTE6MTAiLCJ1cGRhdGVUaW1lIjoiMjAyMC0wMi0wMyAxNjoxMToxMCIsImNyZWF0ZVVzZXIiOiJQSkoyMjIyIiwidXBkYXRlVXNlciI6IlBKSjIyMjIiLCJpZCI6MSwidXNlcklkIjoic3VyZWwiLCJ1c2VyTmFtZSI6IlBKSiIsInBhc3N3b3JkIjoiMTExMSIsInNjb3JlcyI6bnVsbCwic2FtcGxlRW50aXR5Q2hpbGRzIjpudWxsLCJkZWxldGVkIjpmYWxzZX19.RC01WoVPU_GD1z2gFGhog_YRSCRI_-iwCw9MnhPD9yM");
						}
						, success: function(row) {
							drawTestList(row.id, row.comment, row.createTime);
						}
					});
				});
				
				$(document).on("click",".btn_delete",function(){
					var targetId = $($(this).parent().parent().children()[0]).text();

					$.ajax({ 
						type: 'get', 
						url: '/fulfilment/test/delete?id=' + targetId , 
						dataType : 'json' , 
						beforeSend: function (xhr) {
							xhr.setRequestHeader ("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJyZWdEYXRlIjp7ImRheU9mTW9udGgiOjMsImRheU9mV2VlayI6Ik1PTkRBWSIsImRheU9mWWVhciI6MzQsIm1vbnRoIjoiRkVCUlVBUlkiLCJ5ZWFyIjoyMDIwLCJtb250aFZhbHVlIjoyLCJob3VyIjoxNywibWludXRlIjo1MywibmFubyI6ODgwMDAwMDAwLCJzZWNvbmQiOjQ5LCJjaHJvbm9sb2d5Ijp7ImlkIjoiSVNPIiwiY2FsZW5kYXJUeXBlIjoiaXNvODYwMSJ9fSwiYWxnIjoiSFMyNTYifQ.eyJzdWIiOiJqd3Rfc3ViamVjdCIsImp3dF9rZXkiOnsiY3JlYXRlVGltZSI6IjIwMjAtMDItMDMgMTY6MTE6MTAiLCJ1cGRhdGVUaW1lIjoiMjAyMC0wMi0wMyAxNjoxMToxMCIsImNyZWF0ZVVzZXIiOiJQSkoyMjIyIiwidXBkYXRlVXNlciI6IlBKSjIyMjIiLCJpZCI6MSwidXNlcklkIjoic3VyZWwiLCJ1c2VyTmFtZSI6IlBKSiIsInBhc3N3b3JkIjoiMTExMSIsInNjb3JlcyI6bnVsbCwic2FtcGxlRW50aXR5Q2hpbGRzIjpudWxsLCJkZWxldGVkIjpmYWxzZX19.RC01WoVPU_GD1z2gFGhog_YRSCRI_-iwCw9MnhPD9yM");
						},
						success: function() {
							$(this).parent().parent().remove();
						}
					});
				});
		});

		function funcTestList() {
			$.ajax({ 
				type: 'get', 
				url: '/fulfilment/test/list' , 
				dataType : 'json' , 
				beforeSend: function (xhr) {
					xhr.setRequestHeader ("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJyZWdEYXRlIjp7ImRheU9mTW9udGgiOjMsImRheU9mV2VlayI6Ik1PTkRBWSIsImRheU9mWWVhciI6MzQsIm1vbnRoIjoiRkVCUlVBUlkiLCJ5ZWFyIjoyMDIwLCJtb250aFZhbHVlIjoyLCJob3VyIjoxNywibWludXRlIjo1MywibmFubyI6ODgwMDAwMDAwLCJzZWNvbmQiOjQ5LCJjaHJvbm9sb2d5Ijp7ImlkIjoiSVNPIiwiY2FsZW5kYXJUeXBlIjoiaXNvODYwMSJ9fSwiYWxnIjoiSFMyNTYifQ.eyJzdWIiOiJqd3Rfc3ViamVjdCIsImp3dF9rZXkiOnsiY3JlYXRlVGltZSI6IjIwMjAtMDItMDMgMTY6MTE6MTAiLCJ1cGRhdGVUaW1lIjoiMjAyMC0wMi0wMyAxNjoxMToxMCIsImNyZWF0ZVVzZXIiOiJQSkoyMjIyIiwidXBkYXRlVXNlciI6IlBKSjIyMjIiLCJpZCI6MSwidXNlcklkIjoic3VyZWwiLCJ1c2VyTmFtZSI6IlBKSiIsInBhc3N3b3JkIjoiMTExMSIsInNjb3JlcyI6bnVsbCwic2FtcGxlRW50aXR5Q2hpbGRzIjpudWxsLCJkZWxldGVkIjpmYWxzZX19.RC01WoVPU_GD1z2gFGhog_YRSCRI_-iwCw9MnhPD9yM");
				},
				success: function(rows) {
					console.log(rows);
					$.each(rows, function(idx, row){
						drawTestList(row.id, row.comment, row.createTime);
					});
				}
			});
		}

		function drawTestList(id, comment, createTime) {
			$("#table_test tbody").append(
				"<tr>"
				+ "	<td>" + id + "</td>"
				+ "	<td>" + comment + "</td>"
				+ "	<td>" + createTime + "</td>"
				+ "	<td><input type='button' value='삭제' class='btn_delete'></td>"
				+ "</tr>"
			);
		}
	</script>
</head>
<body>

<div>
	<div>코멘트 입력 : <input type="text" placeholder="코멘트 작성" id="val_comment"><input type="button" value="입력" id="btn_comment"></div>
	<div>
		<table id="table_test" >
			<colgroup>
			<col width="50px" />
			<col width="150px" />
			<col width="100px" />
			<col width="50px" />
			</colgroup>
			<thead>
				<tr>
					<th>id</th>
					<th>코멘트</th>
					<th>작성시간</th>
					<th>비고</th>
				</tr>
			</thead>
			<tbody></tbody>
		</table>
	</div>
</div>
</body>
</html>