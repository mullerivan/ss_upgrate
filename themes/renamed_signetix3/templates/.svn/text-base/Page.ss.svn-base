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
			 @import url(themes/signetix3/css/ie6.css);
			</style> 
		<![endif]-->
		
		<!--[if IE 7]>
			<style type="text/css">
			 @import url(themes/signetix3/css/ie7.css);
			</style> 
		<![endif]-->	
		<style type="text/css">
		body, html { background: url($BaseHref/themes/signetix3/images/t3_pagebg.gif) repeat-y top left; }
		#banner { background: url($BaseHref/themes/signetix3/images/t3header.jpg) no-repeat top left; }
		</style>	
		

		<link rel="stylesheet" type="text/css" href="$BaseHref/themes/signetix3/vertical_menu/ddsmoothmenu.css" />
		<link rel="stylesheet" type="text/css" href="$BaseHref/themes/signetix3/vertical_menu/ddsmoothmenu-v.css" />

		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.2.6/jquery.min.js"></script>
		<script type="text/javascript" src="$BaseHref/themes/signetix3/vertical_menu/ddsmoothmenu.js"></script>

		<script type="text/javascript">

		ddsmoothmenu.init({
			mainmenuid: "smoothmenu2", //Menu DIV id
			orientation: 'v', //Horizontal or vertical menu: Set to "h" or "v"
			classname: 'ddsmoothmenu-v', //class added to menu's outer DIV
			//customtheme: ["#804000", "#482400"],
			contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
		})

		</script>
</head>
	
<body>

<div id="container">
    <div id="tagline">$CompanyTagline</div>
    <div id="logo">$CompanyLogo2</div>
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
<div id="siteend">&nbsp;</div>

</body>
</html>
