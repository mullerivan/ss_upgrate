<% if Menu(2) %>
<ul id="level2">
	<% control Menu(2) %>	 
		<li><a href="$Link" title="Go to the $Title page" class="$LinkingMode">$MenuTitle</a>
			<% if Children %> <% if LinkOrSection = section %>
				<ul id="level3">
					<% control Children %>
					<li><a href="$Link" title="Go to the $Title page" class="$LinkingMode">$MenuTitle</a>
						<% if Children %> <% if LinkOrSection = section %>
							<ul class="level4">
								<% control Children %>
									<li><a href="$Link" title="Go to the $Title page" class="$LinkingMode">$MenuTitle</a></li>
								<% end_control %>
							</ul>
						<% end_if %> <% end_if %>
					</li>
					<% end_control %>
				</ul>
			<% end_if %> <% end_if %> 		
		</li>
	<% end_control %>
</ul>
<% end_if %>