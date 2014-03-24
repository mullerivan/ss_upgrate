<div id="specsheet">
    <% include my_carousel %>
</div>

<h1>$Title</h1>
<h2>$ShortDescription</h2>

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
<br/>

<div id="rightBlockLinks">

    <% include enquire_button %>

    <% include sendToFriend %>

    <% include print_link %>

    <div id="back_link">
        <a href="/used-parts-accessories/">
            <img src="{$BaseHref}themes/nzcommercials/images/previous.png" border="0" width="10" height="16"
                 alt="Back to all Excavators" title="Back to all Excavators"/>BACK TO PARTS STOCKLIST
        </a>
    </div>
</div>

<strong>Description</strong>

$Content

<br />
<br />

<% include ProductInquire %>
<% include Disclaimer %>