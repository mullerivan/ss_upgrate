<% if $Level(2) %>
    <div class="breadcrumbs">
        $Breadcrumbs
    </div>
<% end_if %>

<div id="specsheet">
	<% include my_carousel %>
</div><!-- End Specsheet -->
    
<h1 style="width: 260px;">$Title</h1>
<h2 style="width: 260px;">$ShortDescription</h2>

<table width="260" border="0" cellspacing="0" cellpadding="0" id="specs">
	<tr>
		<td width="71" class="legend" scope="col">Year</td>
		<td width="129" scope="col">$Year</td>
	</tr>
	<tr>
		<td class="legend">Stock No.</td>
		<td>$StockNo</td>
	</tr>
	<tr>
		<td class="legend">Reg Exp</td>
		<td>$RegExp</td>
	</tr>
	<tr>
		<td class="legend">Engine</td>
		<td>$Engine</td>
	</tr>
	<tr>
		<td class="legend">Trans</td>
		<td>$Trans</td>
	</tr>
	<tr>
		<td class="legend">R/Axle</td>
		<td>$RAxle</td>
	</tr>
	<tr>
		<td class="legend">T/Gear</td>
		<td>$TGear</td>
	</tr>
	<tr>
		<td class="legend">Speedo</td>
		<td>$Speedo</td>
	</tr>
	<tr>
		<td class="legend">GVM</td>
		<td>$GVM</td>
	</tr>
	<tr>
		<td class="legend">GCM</td>
		<td>$GCM</td>
	</tr>
	<tr>
		<td class="legend">Tare</td>
		<td>$Tare</td>
	</tr>
	<tr>
		<td class="legend">Payload</td>
		<td>$Payload</td>
	</tr>
	<tr>
		<td class="legend">COF Exp</td>
		<td>$COFExp</td>
	</tr>
	<tr>
		<td class="legend">Radio</td>
		<td>$Radio</td>
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

<br />

<div id="rightBlockLinks">

    <% include enquire_button %>

    <% include sendToFriend %>

    <% include print_link %>

    <div id="back_link"><a href="/used-trucks-for-sale/"><img src="{$BaseHref}themes/nzcommercials/images/previous.png" border="0" width="10" height="16" alt="Back to all Excavators" title="Back to all Excavators"/>BACK TO TRUCKS</a></div>
</div><!-- End rightBlockLinks -->

<strong>Description</strong>

$Content

<% include ProductInquire %>
<% include Disclaimer %>