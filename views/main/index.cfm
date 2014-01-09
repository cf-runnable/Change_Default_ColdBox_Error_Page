<cfoutput>

	<p>
		<h2>Instructions</h2>
	</p>
	
	Oops, the developers have been bad. <br>
	If you click the button below you'll be taken to a page that throws an error.<br>
	<a class="btn btn-default" href="#event.buildLink(linkto="main.badPage", queryString="fwreinit=1")#">Bad Page</a><br>

	<br>	
	<cfset customErrorTemplate = getSetting("customErrorTemplate")>
	<p>
		<cfif len(trim(customErrorTemplate))>
			<strong><span class="text-success">Your site has a custom error page configured.  When an error happens, users will see </span></strong><span class="label label-default">#HTMLEditFormat(customErrorTemplate)#</span>.<br>
			Comment that line out from the ColdBox config file and <a href="/?fwreinit=1">click here</a> to reload the framework to see what happens.
		<cfelse>
			<span class="text-error text-strong"><strong>Your site has does NOT a custom error page configured.  When an error happens, users will see all the gory details.</strong></span><br>
			Set <strong>customErrorTemplate</strong> to "<strong>includes/prettyError.cfm</strong>" in the ColdBox config file and <a href="/?fwreinit=1">click here</a> to reload the framework and make things pretty again.
		</cfif>
	</p>
	
</cfoutput>