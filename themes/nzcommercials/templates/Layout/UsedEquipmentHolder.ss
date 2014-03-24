<div>
	<h1 id="pageTitle">$Title</h1>
	$Content
	<div id="UsedEquipmentList">
		<% loop $SortedChildren %>
		<div class="UsedEquipmentDiv">

			<div class="UsedEquipmentPrice UsedEquipmentCell">
				<h2>$Price</h2>
			</div>

			<div class="UsedEquipmentImage UsedEquipmentCell">
				<a href="$Link" title="Read more of &quot;{$Title}&quot;">
                    <img align="left" src="$MainImageURL" class="mainimage" />
                </a>
			</div>

			<div class="UsedEquipmentTeaser UsedEquipmentCell">
				<h2><a href="$Link" title="Read more of &quot;{$Title}&quot;">$Title</a></h2>
				$Content.LimitWordCount(40)
				<a href="$Link" title="Read more on &quot;{$Title}&quot;">Read more &gt;&gt;</a>
			</div>
			<div class="clear"> </div>
		</div>

		<% end_loop %>
	</div>
</div>
<% include Disclaimer %>
