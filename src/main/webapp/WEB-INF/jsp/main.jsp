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
  
  
  <script>
  $( function() {
    $( "#accordion" ).accordion();
  } );
  </script>
</head>
<body>
 
<div id="accordion">
  <h3>TEST1 </h3>
  <div>
    <p>
    Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integer
    ut neque. Vivamus nisi metus, molestie vel, gravida in, condimentum sit
    amet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin viverra leo ut
    odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.
    </p>
  </div>
  <h3>Section 2</h3>
  <div>
    <p>
    Sed non urna. Donec et ante. Phasellus eu ligula. Vestibulum sit amet
    purus. Vivamus hendrerit, dolor at aliquet laoreet, mauris turpis porttitor
    velit, faucibus interdum tellus libero ac justo. Vivamus non quam. In
    suscipit faucibus urna.
    </p>
  </div>
  <h3>Section 3</h3>
  <div>
    <p>
    Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis.
    Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero
    ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis
    lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.
    </p>
    <ul>
      <li>List item one</li>
      <li>List item two</li>
      <li>List item three</li>
    </ul>
  </div>
  <h3>Section 4</h3>
  <div>
    <p>
    Cras dictum. Pellentesque habitant morbi tristique senectus et netus
    et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in
    faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia
    mauris vel est.
    </p>
    <p>
    Suspendisse eu nisl. Nullam ut libero. Integer dignissim consequat lectus.
    Class aptent taciti sociosqu ad litora torquent per conubia nostra, per
    inceptos himenaeos.
    </p>
  </div>
</div>

<script type="text/javascript">

	$(function(){ 
		$("#backendcall").click(
			function(){ 
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
			}) 
		})
		
</script>

<input type="button" id="backendcall" value="BackEnd Call" /> 
<br/> 
<div id="idDiv"></div>
<br/>
<div id="userId"></div>
<br/> 
<div id="userName"></div>
<br/> 
<div id="createTime"></div>
<br/> 
<div id="updateTime"></div>
<br/> 
<div id="createUser"></div>
<br/> 
 

</body>
</html>