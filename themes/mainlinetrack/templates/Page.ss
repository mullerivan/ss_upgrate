<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<% base_tag %>
		<title><% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %></title>
		$MetaTags(false)
		<link rel="shortcut icon" href="/favicon.ico" />

		<% require themedCSS(signetix) %> 
		<% require themedCSS(layout) %> 
		<% require themedCSS(typography) %> 
		<% require themedCSS(form) %> 

		<!--[if IE 6]>
		<style type="text/css">
		@import url(themes/mainline/css/ie6.css);
		</style> 
		<![endif]-->

		<!--[if IE 7]>
		<style type="text/css">
		@import url(themes/mainline/css/ie7.css);
		</style> 
		<![endif]-->		

		<link rel="stylesheet" type="text/css" href="$BaseHref/themes/signetix1/vertical_menu/ddsmoothmenu.css" />
		<link rel="stylesheet" type="text/css" href="$BaseHref/themes/signetix1/vertical_menu/ddsmoothmenu-v.css" />

		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.2.6/jquery.min.js"></script>
		<script type="text/javascript" src="$BaseHref/themes/signetix1/vertical_menu/ddsmoothmenu.js"></script>


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

		<script type="text/javascript">

		  var _gaq = _gaq || [];
		  _gaq.push(['_setAccount', 'UA-19088870-1']);
		  _gaq.push(['_trackPageview']);

		  (function() {
		    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
		    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
		    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
		  })();

		</script>		
		
		<style type="text/css">
			body { background:#f3f3f3 url($BaseHref/themes/mainlinetrack/images/mainlinetracks_bodyBG.gif) no-repeat top left; }
			#RTnavigation { background:#3d3938 url($BaseHref/themes/mainline/images/mainline_tab_bg.jpg) repeat-x top; }
			#RTnavigation li a:hover, #RTnavigation li.current { background: url($BaseHref/themes/mainline/images/mainline_tabactive_bg.jpg) repeat-x top; }
			#RTnavigation li a.current { color:#000; }
			#RTnavigation li li a.current { color:#000;} 			
			#prevLink:hover, #prevLink:visited:hover { background: url($BaseHref/themes/mainline/images/prevlabel.gif) left 15% no-repeat; }
			#nextLink:hover, #nextLink:visited:hover { background: url($BaseHref/themes/mainline/images/nextlabel.gif) right 15% no-repeat; }
			#footerNavigation { background:#3d3938 url($BaseHref/themes/mainline/images/mainline_tab_bg.jpg) repeat-x top; clear: both; height: 25px; line-height: 25px; margin: 0 auto; text-align: center; width: 900px; }
				#footerNavigation ul li   { float: left; padding:0 0 0 13px; }
					#footerNavigation ul li:after { content: "|"; color:#666; padding-left:13px; }
					#footerNavigation ul li:last-child:after { content: ""; padding-left:0;}
				#footerNavigation ul li a { text-decoration:none; color:#f0f0f0; }
				#footerNavigation ul li a:hover { text-decoration:underline; color:#FEDD2E; }
				#phone { width:250px; height:25px; z-index:100; position:relative; top:-25px; left:160px; color:#888; font-size:15px; }
				#phone a { text-decoration:none; color:#888; }
		</style>		
	</head>

	<body>
		<div id="header">
			<div id="tagline"><img src="$BaseHref/themes/mainline/images/mainline_tracks_headphotos.jpg" alt="Mainline track - Rubber Track specialists" style="clear:right" /></div>
			<div id="logo"><a href="http://www.mainlinetrack.co.nz"><img src="$BaseHref/themes/mainline/images/mainlinetrack_logo.jpg" width="426" height="105" alt="Mainline Track - Rubber Track specialists, Richmond / Nelson" /></a></div>
			<div id="phone">NZ Freephone: <a href="tel:0800551201"><strong>$CompanyTagline</strong></a></div>
		</div>
        <div id="submenu">
				<% include SubMenu %>
		</div>
        <div id="RTnavigation">
		<% include Navigation %>
        </div> <!--end RTnavigation-->

		<div id="printHeader">
			<img src="/themes/mainlinetrack/images/MainlineTrackLogoSmall.JPG" border="0" />
			<h2>NZ Freephone: 0800 551 201</h2>
			<h2>Phone: 03 543 9030</h2>
			<h2>Fax: 03 541 0787</h2>
			<h2>Email: rubbertrack@mainlinecom.co.nz</h2>
			<h2>Website: http://www.mainlinetrack.co.nz</h2>
		</div>

		<div id="container">
				
			<div id="sidebar">
				<br/>
				<h2><a href="http://www.mainlinetrack.co.nz"><img class="center" src="$BaseHref/themes/mainlinetrack/images/btn_mainline-commercials.png" alt="Go to Mainline Commercials Website" title="Go to Mainline Commercials Website" width="160" height="56" border="0"/></a><br /></h2>
				<div id="newsletter">
					<h4 style="margin: 10px 0 0 10px;">Get Our Newsletter</h4>
					<%-- $NewsletterTrack --%>
					<% include Subscription %>
				</div>
				<br/>
				<div id="bookmark">
					<a href="javascript:Bookmark2()" title="Add Page to bookmarks">
						<img src="assets/Buttons/bookmark.jpg" />
							<span id="bookmarklink"> Add page to Bookmarks</span>
					</a>
				</div>				
			</div>


			<div id="content">
				$Layout
			</div>
			<br clear="all" />
		</div>
		<div id="footerNavigation">
			<% include FooterNavigation %>
		</div>
		<div id="footercontainer">
			<div id="footer">
				<div id="footerLeft">
					<strong>&copy; Mainline Track</strong> &middot; Rubber Tracks, Excavator Buckets &amp; Undercarriage Parts &middot; Richmond &middot; Nelson &middot; NZ<br />
					<a href="http://www.mainlinetrack.co.nz/links">Links</a>
				</div>
			</div>
	</body>
</html>

