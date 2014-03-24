<% if $Level(2) %>
    <div class="breadcrumbs">
        $Breadcrumbs
    </div>
<% end_if %>
<div id="specsheet">
    <% include my_carousel %>
</div>

<h1 style="width: 260px;">$Title</h2>
<h2 style="width: 260px;">$ShortDescription</h1>

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
		<td class="legend">Size</td>
		<td>$size</td>
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
        <a href="/other-used-machines-for-sale/">
            <img src="{$BaseHref}themes/nzcommercials/images/previous.png" border="0" width="10" height="16"
                 alt="Back to all Excavators" title="Back to all Excavators"/>BACK TO OTHER MACHINES
        </a>
    </div>
</div>

<strong>Description</strong>

$Content

<% include ProductInquire %>
<% include Disclaimer %>
