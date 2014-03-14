<ul>
	<% control Menu(1) %>	 
		<li><a href="$Link" title="Go to the $Title page" class="$LinkingMode">$MenuTitle</a>
			<% if Children %>
			<ul class="level2">
				<% control Children %>
					<li><a href="$Link" title="Go to the $Title page" class="$LinkingMode">$MenuTitle</a>
						<% if Children %>
						<ul class="level3">
							<% control Children %>
								<li><a href="$Link" title="Go to the $Title page" class="$LinkingMode">$MenuTitle</a>
									<% if Children %>
									<ul class="level4">
										<% control Children %>
											<li><a href="$Link" title="Go to the $Title page" class="$LinkingMode">$MenuTitle</a></li>
										<% end_control %>
									</ul>
									<% end_if %>
									</li>
							<% end_control %>
						</ul>
						<% end_if %>
						</li>
				<% end_control %>
			</ul>
			<% end_if %>
			</li>
	<% end_control %>
</ul>
 