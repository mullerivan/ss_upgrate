<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<% base_tag %>
		<title><% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; Mainline Commercial &amp; Industrial Ltd</title>
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
		</style>		
	</head>

	<body>
		<!--
		<div id="divisions">
			<span class="divisions_entry"><a href="http://www.mainlinecommercials.co.nz">Mainline Commercial & Industrial</a></span><span class="divisions_entry">Mainline Track</span>
		</div>
		-->
		<div id="header">
			<div id="tagline"><img src="$BaseHref/themes/mainline/images/mainline_tracks.jpg" alt="Mainline track - Rubber Track specialists" style="clear:right" /></div>
			<div id="logo"><a href="http://www.mainlinetrack.co.nz"><img src="$BaseHref/themes/mainline/images/mainlinetrack_logo.jpg" width="426" height="105" alt="Mainline Commercial &amp; Industrial - Excavators &amp; Trucks, Richmond / Nelson" /></a></div>
		</div>
        <div id="submenu">
				<% include SubMenu %>
		</div>
        <div id="RTnavigation">
		<% include Navigation %>
		<div id="phone">NZ Freephone: <strong>$CompanyTagline</strong></div>
        </div> <!--end RTnavigation-->

			

		<div id="container">
			<div id="sidebar">
				<br/>
				<div id="newsletter">
					<h4 style="margin: 10px 0 0 10px;">Get Newsletter</h4>
					$Newsletter
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

		<div id="footercontainer">
			<div id="footer">
				<div id="footerLeft">
				<strong>&copy; Mainline Track</strong> &#183; Rubber Tracks and Earthmoving Machinery &#183; Richmond &#183; Nelson &#183; NZ</div><div id="ftright"><strong>NZ Freephone&#58; 0800 551 201<br />Phone&#58; 03 543 9030</strong></div>
			</div>
		</div>

	</body>
</html>

