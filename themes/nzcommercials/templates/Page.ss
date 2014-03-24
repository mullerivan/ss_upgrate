<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<% base_tag %>
		<title><% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> - NZ Commercials &amp; Industrial</title>
		$MetaTags(false)
		<link rel="icon" type="image/png" href="{$BaseHref}themes/nzcommercials/images/favicon.png" />

		
		<!--[if IE 6]>
		<style type="text/css">
			@import url(themes/nzcommercials/css/ie6.css);
		</style> 
		<![endif]-->
	
		<!--[if IE 7]>
		<style type="text/css">
			@import url(themes/nzcommercials/css/ie7.css);
		</style> 
		<![endif]-->		

		<script type="text/javascript">
			<!--//--><![CDATA[//><!--
			sfHover = function() {
				/*
				var sfEls = document.getElementById("tab").getElementsByTagName("li");
				for (var i=0; i<sfEls.length; i++) {
				sfEls[i].onmouseover=function() {
				this.className+=" sfhover";
				}
				sfEls[i].onmouseout=function() {
				this.className=this.className.replace(new RegExp(" sfhover\\b"), "");
				}
				}
				*/
				var sfULs = document.getElementById("tab").getElementsByTagName("ul");
				for (var i=0; i<sfULs.length; i++) {
					if (sfULs[i].className=="level2") {
						sfULs[i].onmouseover=function() {
							this.className = "sfhover";
							//this.className=this.className.replace(new RegExp(" hideme\\b"), "");
						}
						sfULs[i].onmouseout=function() {
							//this.className+=" hideme";
							this.className = this.className.replace(new RegExp(" sfhover"), "");
						}						
					}
				}
			}
			if (window.attachEvent) window.attachEvent("onload", sfHover);
			//--><!]]>

			function showEnquiry() {
				document.getElementById("enquiry").style.display = '';
				window.location.hash="enquire"; 
			}
		</script>	
		
	</head>

	<body>
		<div id="container">
			
			<a name="top" id="top"></a>
			
			<div id="header">
				<div style="float: right;" id="print_contact_info">
					Phone: <strong>03 391 0023</strong><br />
					Mobile: 022 043 1352<br />
					Email: sales@nzcommercialsandindustrial.co.nz<br />
					Website: http://www.nzcommercialsandindustrial.co.nz<br />
					Location: 113B Beach Road, Richmond, Nelson 7020
					<br clear="all" />
				</div>
				<div id="phone"><span class="red">(03) 391 0023</span></div>
				<div id="tagline"><h2>New Zealand Wide Commercial Vehicles Sales &amp; Hire</h2></div>
				<div id="logo"><a href="{$BaseHref}"><img src="{$BaseHref}themes/nzcommercials/images/nzcommercials-logo.png" width="325" height="75" alt="New Zealand Commercials &amp; Industrial" title="New Zealand Commercials &amp; Industrial" /></a></div>

			</div>
	
			<div id="tabs">
				<% include IncludedSearch %>
				<% include TopNavigation %>
			</div>
	
			<div id="sidebar">
							
				<% include SidebarNavigation %>

				<div id="newsletter">
					<h4 style="margin: 10px 0 0 10px;">Get Our Newsletter</h4>
					<%-- $Newsletter // Function in Page.php, unused -> switched to MailChimp embedded form --%>
					<% include Subscription %>
				</div>
				
				<% include SidebarProducts %>
				
				<br clear="all" />
                $SidebarContent
				<br clear="all" />		
			</div>

			<div id="content">
				
				$Layout
				
			</div>
			
			<% include Footer %>
			
		</div>
		
		<% include Copyright %>

		<% include GoogleAnalytics %>

	</body>
</html>
