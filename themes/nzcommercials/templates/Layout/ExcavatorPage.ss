<% if $Level(2) %>
    <div class="breadcrumbs">
        $Breadcrumbs
    </div>
<% end_if %>
<div id="specsheet">
    <% include my_carousel %>
</div>

<h1>$Title</h1>
<h2>$ShortDescription</h2>

<table width="200" border="0" cellspacing="0" cellpadding="0" id="specs">
	<tr>
		<td width="71" class="legend" scope="col">Year</td>
		<td width="129" scope="col">$Year</td>
	</tr>
	<tr>
		<td class="legend">Stock No.</td>
		<td>$StockNo</td>
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
		<td class="legend">Hours</td>
		<td>$Hours</td>
	</tr>
	<tr>
		<td class="legend">Weight</td>
		<td>$Weight</td>
	</tr>
	<tr>
		<td class="legend">Buckets</td>
		<td>$Buckets</td>
	</tr>
	<tr>
		<td class="legend">Tracks</td>
		<td>$Tracks</td>
	</tr>
	<tr>
		<td class="legend">Sprockets</td>
		<td>$Sprockets</td>
	</tr>
	<tr>
		<td class="legend">Rollers</td>
		<td>$Rollers</td>
	</tr>
	<tr>
		<td class="legend">Quick Hitch</td>
		<td>$QuickHitch</td>
	</tr>
	<tr>
		<td class="legend">Extra Plumbing</td>
		<td>$ExtraPlumbing</td>
	</tr>
	<tr>
		<td class="legend">Cab Guard</td>
		<td>$CabGuard</td>
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

    <div id="back_link">
        <a href="/used-excavators-for-sale/">
            <img src="{$BaseHref}themes/nzcommercials/images/previous.png" border="0" width="10" height="16"
                 alt="Back to all Excavators" title="Back to all Excavators"/>BACK TO EXCAVATORS
        </a>
    </div>
</div>

<strong>Description</strong>

$Content

<% include ProductInquire %>
<% include Disclaimer %>