<div id="specsheet">

	<script type="text/javascript">
		var clicked = false;
		var currentAutoPosition = 2;

		var autoExchangeArray = new Array()
		autoExchangeArray[2] = "sub1";
		autoExchangeArray[3] = "sub2";
		autoExchangeArray[4] = "sub3";
		autoExchangeArray[5] = "sub4";
		autoExchangeArray[6] = "sub5";
		autoExchangeArray[7] = "sub6";
		autoExchangeArray[8] = "sub7";
		autoExchangeArray[9] = "sub8";
		autoExchangeArray[10] = "sub9";
		autoExchangeArray[11] = "sub10";
		autoExchangeArray[12] = "sub11";
		autoExchangeArray[13] = "sub12";
		autoExchangeArray[14] = "sub13";
		autoExchangeArray[15] = "sub14";

		var imageArray = [];
		imageArray[1] = 'main';
		imageArray[2] = 'sub1';
		imageArray[3] = 'sub2';
		imageArray[4] = 'sub3';
		imageArray[5] = 'sub4';
		imageArray[6] = "sub5";
		imageArray[7] = "sub6";
		imageArray[8] = "sub7";
		imageArray[9] = "sub8";
		imageArray[10] = "sub9";
		imageArray[11] = "sub10";
		imageArray[12] = "sub11";
		imageArray[13] = "sub12";
		imageArray[14] = "sub13";
		imageArray[15] = "sub14";

		function exchangeImage (image, position) {
			exchangeImageHelp (image, position);
			clicked = true;
		}

		function exchangeImageHelp (image, position) {
			var currentTop = imageArray[1];
			var currentClick = imageArray[position];

			imageArray[1] = currentClick;
			imageArray[position] = currentTop;

			var largeCurrentName = currentClick + 'large';
			var largeCurrent = document.getElementById(largeCurrentName);
			var mainImage = document.getElementById('main');
			mainImage.src = largeCurrent.src;
			var mainImageLink = document.getElementById('linkToMain');
			mainImageLink.href = largeCurrent.src;

			var smallCurrentName = currentTop + 'small';
			var smallCurrent = document.getElementById(smallCurrentName);
			image.src = smallCurrent.src;
		}

		function autoExchange() {
			if (clicked) return;

			var p1 = currentAutoPosition;
			//console.log("currentPosition: "+p1);
			var p2 = autoExchangeArray[p1];
			//console.log("currentId: "+p2);
			var p2Obj = document.getElementById(p2);

			//alert(p2Obj.src);
			var noEndlessLoop = 1;
			while (!ifElementContains(p2Obj.src, 'assets')) {
				increaseAutoPosition();
				var p1 = currentAutoPosition;
				var p2 = autoExchangeArray[p1];
				var p2Obj = document.getElementById(p2);
				noEndlessLoop++;
				if (noEndlessLoop>30) break;
			}

			if (ifElementContains(p2Obj.src, 'assets')) exchangeImageHelp (p2Obj, p1);

			increaseAutoPosition();
		}

		function increaseAutoPosition () {
			if (currentAutoPosition<(autoExchangeArray.length-1)) currentAutoPosition++;
			else currentAutoPosition = 2;		
		}

		function ifElementContains(eid, value) {
			var vapp= (eid.charCodeAt ? document.getElementById(eid) : eid ) || eid;
			var val = vapp.value || vapp.innerHTML || window[vapp] || vapp;
			return !! val.match(value);
		}

		function array_search (needle, haystack, argStrict) {
			// Searches the array for a given value and returns the corresponding key if successful  
			// 
			// version: 1004.1212
			// discuss at: http://phpjs.org/functions/array_search    // +   original by: Kevin van Zonneveld (http://kevin.vanzonneveld.net)
			// +      input by: Brett Zamir (http://brett-zamir.me)
			// +   bugfixed by: Kevin van Zonneveld (http://kevin.vanzonneveld.net)
			// *     example 1: array_search('zonneveld', {firstname: 'kevin', middle: 'van', surname: 'zonneveld'});
			// *     returns 1: 'surname' 
			var strict = !!argStrict;
			var key = '';

			for (key in haystack) {
				if ((strict && haystack[key] === needle) || (!strict && haystack[key] == needle)) {
					return key;
				}

				if (basename(haystack[key][0]) === basename(needle)) {
					return true;	
				}
			}
			return false;
		}

		$(function() {
			fixImages();
			// show form when error has occured (and hide when there is no error)
			var errorFound =  document.getElementById("Form_ProductInquireForm_error");
			errorFound = errorFound.innerHTML;

			var requiredFieldsFound = document.getElementsByName("required");
			if (!errorFound && requiredFieldsFound.length<1) {
				var inquiryForm = document.getElementById('enquiry');
				inquiryForm.style.display = 'none';
			}
			else {
				window.location.hash="enquire";
			}

			$('.lightBox a').lightBox({fixedNavigation:true}); // Select all links in object with specimage ID
			//$('#hiddenImages a').lightBox({fixedNavigation:true}); // Select all links in object with specimage ID
		});

		function fixImages () {
			var imageId;
			var imageObj;
			for(var i in autoExchangeArray) {
				imageId = autoExchangeArray[i];
				console.log("imageId: "+imageId);
				imageObj = $('#'+imageId);
				console.log(imageObj);
				if (imageObj) {
					console.log("imageSrc: "+imageObj.attr("src"));
					if (!imageObj.attr("src")) imageObj.attr("src", "/themes/mainline/images/1x1.gif");
				}
			}
		}

		setInterval ('autoExchange()', 2000);
	</script>

	<div id="right_block">	
		<div id="specimage" class="lightBox"> <a href="$MainImage.MainImage.URL" id="linkToMain"> <img src="$MainImage.MainImage.URL" id="main" width="400"/>  
				<span id="viewLargePhotoLink"><img src="$BaseHref/themes/mainline/images/magnifier_zoom_in.png" border="0" width="16" height="16" alt="View full size photo" title="View full size photo">View full size photo</span></a></div>	

		<div style="display: none;" id="hiddenImages">
			<img src="$MainImage.ProductImage.URL" id="mainsmall" />
			<span id="largeImagesHidden" class="lightBox">
				<a href="$MainImage.MainImage.URL"><img src="$MainImage.MainImage.URL" id="mainlarge" /></a>
				<a href="$SubImage1.MainImage.URL"><img src="$SubImage1.MainImage.URL" id="sub1large" /></a>
				<a href="$SubImage2.MainImage.URL"><img src="$SubImage2.MainImage.URL" id="sub2large" /></a>
				<a href="$SubImage3.MainImage.URL"><img src="$SubImage3.MainImage.URL" id="sub3large" /></a>
				<a href="$SubImage4.MainImage.URL"><img src="$SubImage4.MainImage.URL" id="sub4large" /></a>
				<a href="$SubImage5.MainImage.URL"><img src="$SubImage5.MainImage.URL" id="sub5large" /></a>
				<a href="$SubImage6.MainImage.URL"><img src="$SubImage6.MainImage.URL" id="sub6large" /></a>
				<a href="$SubImage7.MainImage.URL"><img src="$SubImage7.MainImage.URL" id="sub7large" /></a>
				<a href="$SubImage8.MainImage.URL"><img src="$SubImage8.MainImage.URL" id="sub8large" /></a>
				<a href="$SubImage9.MainImage.URL"><img src="$SubImage9.MainImage.URL" id="sub9large" /></a>
				<a href="$SubImage10.MainImage.URL"><img src="$SubImage10.MainImage.URL" id="sub10large" /></a>
				<a href="$SubImage11.MainImage.URL"><img src="$SubImage11.MainImage.URL" id="sub11large" /></a>
				<a href="$SubImage12.MainImage.URL"><img src="$SubImage12.MainImage.URL" id="sub12large" /></a>
				<a href="$SubImage13.MainImage.URL"><img src="$SubImage13.MainImage.URL" id="sub13large" /></a>
				<a href="$SubImage14.MainImage.URL"><img src="$SubImage14.MainImage.URL" id="sub14large" /></a>
			</span>
			<img src="$SubImage1.ProductImage.URL" id="sub1small" />
			<img src="$SubImage2.ProductImage.URL" id="sub2small" />
			<img src="$SubImage3.ProductImage.URL" id="sub3small" />
			<img src="$SubImage4.ProductImage.URL" id="sub4small" />
			<img src="$SubImage5.ProductImage.URL" id="sub5small" />
			<img src="$SubImage6.ProductImage.URL" id="sub6small" />
			<img src="$SubImage7.ProductImage.URL" id="sub7small" />
			<img src="$SubImage8.ProductImage.URL" id="sub8small" />
			<img src="$SubImage9.ProductImage.URL" id="sub9small" />
			<img src="$SubImage10.ProductImage.URL" id="sub10small" />
			<img src="$SubImage11.ProductImage.URL" id="sub11small" />
			<img src="$SubImage12.ProductImage.URL" id="sub12small" />
			<img src="$SubImage13.ProductImage.URL" id="sub13small" />
			<img src="$SubImage14.ProductImage.URL" id="sub14small" />
		</div>		
	</div>

	<table width="400" border="0" cellspacing="0" cellpadding="0" id="specthumbs">
		<tr>
			<td width="25%"><img src="$SubImage1.ProductImage.URL" id="sub1" style="cursor: pointer;" onclick="exchangeImage(this, 2);" /></td>
			<td width="25%"><img src="$SubImage2.ProductImage.URL" id="sub2" style="cursor: pointer;" onclick="exchangeImage(this, 3);" /></td>
			<td width="25%"><img src="$SubImage3.ProductImage.URL" id="sub3" style="cursor: pointer;" onclick="exchangeImage(this, 4);" /></td>
			<td width="25%"><img src="$SubImage4.ProductImage.URL" id="sub4" style="cursor: pointer;" onclick="exchangeImage(this, 5);" /></td>
		</tr>
		<tr>
			<td width="25%"><img src="$SubImage5.ProductImage.URL" id="sub5" style="cursor: pointer;" onclick="exchangeImage(this, 6);" /></td>
			<td width="25%"><img src="$SubImage6.ProductImage.URL" id="sub6" style="cursor: pointer;" onclick="exchangeImage(this, 7);" /></td>
			<td width="25%"><img src="$SubImage7.ProductImage.URL" id="sub7" style="cursor: pointer;" onclick="exchangeImage(this, 8);" /></td>
			<td width="25%"><img src="$SubImage8.ProductImage.URL" id="sub8" style="cursor: pointer;" onclick="exchangeImage(this, 9);" /></td>
		</tr>
		<tr>
			<td width="25%"><img src="$SubImage9.ProductImage.URL" id="sub9" style="cursor: pointer;" onclick="exchangeImage(this, 10);" /></td>
			<td width="25%"><img src="$SubImage10.ProductImage.URL" id="sub10" style="cursor: pointer;" onclick="exchangeImage(this, 11);" /></td>
			<td width="25%"><img src="$SubImage11.ProductImage.URL" id="sub11" style="cursor: pointer;" onclick="exchangeImage(this, 12);" /></td>
			<td width="25%"><img src="$SubImage12.ProductImage.URL" id="sub12" style="cursor: pointer;" onclick="exchangeImage(this, 13);" /></td>
		</tr>
		<tr>
			<td width="25%"><img src="$SubImage13.ProductImage.URL" id="sub13" style="cursor: pointer;" onclick="exchangeImage(this, 14);" /></td>
			<td width="25%"><img src="$SubImage14.ProductImage.URL" id="sub14" style="cursor: pointer;" onclick="exchangeImage(this, 15);" /></td>
			<td width="25%">&nbsp;</td>
			<td width="25%">&nbsp;</td>
		</tr>
	</table>

</div>


<h2>$Title</h2>

<h1>$ShortDescription</h1>
<table width="200" border="0" cellspacing="0" cellpadding="0" id="specs">
	<tr>
		<td width="71" class="legend" scope="col">Stock No.</td>

		<td width="129" scope="col">$StockNo</td>
	</tr>
	<tr>
		<td class="legend">Size</td>
		<td>$Size</td>
	</tr>
	<tr>
		<td class="legend">Extras</td>
		<td>$Extras</td>
	</tr>
	<tr>
		<td class="legend">&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td class="legend"><strong>Price</strong></td>
		<td><strong>NZ$ $Price</strong></td>
	</tr>
	<tr>
		<td colspan="2" class="spacer">&nbsp;</td>
	</tr>
</table>

<div id="rightBlockLinks">
	<div id="enquire_button">
		<input type="button" name="enquire" value="Enquire now &raquo;" onclick="showEnquiry();" class="btn_yellow" />
	</div>
	<div id="print_link">
		<a href="javascript:window.print()">
			<img src="$BaseHref/themes/mainline/images/printer.png" border="0" width="16" height="16" alt="Print this page" title="Print this page" />
			PRINT OFF SPEC SHEET
		</a>
	</div>
	<div id="back_link">	
		<a href="/parts-accessories/">
			<img src="$BaseHref/themes/mainline/images/previous.png" border="0" width="10" height="16" alt="Back to all Excavators" title="Back to all Excavators" />BACK TO ALL PARTS
		</a>
	</div>
</div>

<strong>Description</strong>

$Content

<br />
<br />	

<div id="enquiry"><a name="enquire" id="enquire"></a>

	<small class="fright">*required fields&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</small>
	<h3>Enquiry</h3>
	<!--	<label>Name*</label><input name="name" type="text" class="txtfield w250" /><br /><br />
	<label>Email*</label><input name="email" type="text" class="txtfield w250" /><br /><br />
	<label>Phone*</label><input name="phone" type="text" class="txtfield w250" /><br /><br />

	<label>Comments / Questions</label><textarea name="comment" cols="" rows="3" class="txtfield w250"></textarea><br /><br />
	<label>&nbsp;</label><input name="submit" type="button" value="Submit enquiry &raquo;" />-->
	$ProductInquireForm
</div>
