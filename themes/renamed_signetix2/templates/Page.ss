<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<% base_tag %>
<title><% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; Your Site Name</title>
		$MetaTags(false)
		<link rel="shortcut icon" href="/favicon.ico" />
		
		<% require themedCSS(signetix) %> 
		<% require themedCSS(layout) %> 
		<% require themedCSS(typography) %> 
		<% require themedCSS(form) %> 

		<!--[if IE 6]>
			<style type="text/css">
			 @import url(themes/signetix1/css/ie6.css);
			</style> 
		<![endif]-->
		
		<!--[if IE 7]>
			<style type="text/css">
			 @import url(themes/signetix1/css/ie7.css);
			</style> 
		<![endif]-->	
		<style type="text/css">
			#banner { background: url($BaseHref/themes/signetix2/images/t2header.jpg) no-repeat top left; }
		</style>
	
</head>
	
<body>

<div id="container">
    <div id="tagline">$CompanyTagline</div>
    <div id="logo">
    	$CompanyLogo2
    </div>
    <div id="banner">
	    <div id="header_title">$CompanyTitle</div>
    </div> 
    <div id="hznavigation">
    <% include TopNavigation %>
    </div> 
    <div class="clear" id="breadcrumb">
    	$Breadcrumbs
    </div>
    <div id="sidenavigation">
		<% include Navigation %>
        <br />
        <div id="sidebar_content">
        	$Sidebar
        </div>
    </div>
    <div id="content">
		$Layout     
    </div>
    <div class="clear">&nbsp;</div>
    <div id="footer">
    	<% include Footer %>
    </div>
</div>
</body>
</html>
