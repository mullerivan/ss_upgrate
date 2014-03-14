<div id="specsheet">

	$Content
	<div id="UsedEquipmentList">
		<% control SortedChildren %>
		<div class="UsedEquipmentDiv">
		
			<div class="UsedEquipmentPrice UsedEquipmentCell">
				<h1>$Price</h1>
			</div>
			
			<div class="UsedEquipmentImage UsedEquipmentCell">
				<a href="$Link" title="Read more of &quot;{$Title}&quot;"><img align="left" src="$MainImage.MainImage.URL" class="mainimage" /></a>
			</div>
			
			<div class="UsedEquipmentTeaser UsedEquipmentCell">
				<h1>$Title</h1>
				$Content.LimitWordCount(40)
				<a href="$Link" title="Read more on &quot;{$Title}&quot;">Read more &gt;&gt;</a>
			</div>
			<div class="clear"> </div>
		</div>

		<% end_control %>
	</div>
</div>