<ul>
	<% loop $Menu(1) %>
		<li><a href="$Link" title="Go to the $Title page" class="$LinkingMode">$MenuTitle</a></li>
	<% end_loop %>
</ul>