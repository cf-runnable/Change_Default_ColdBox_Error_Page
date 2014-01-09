<!---
	This is our custom error page.  It must be a stand-alone page that doesn't depend on the framework's 
	layout or views since the current state of the framework is unknown.  You can access the ColdBox  
	error bean with #exception.getMessage()#, etc if you want to output parts of it on this page. 
 --->

<cfoutput>
	<cfinclude template="error_header.cfm">
	
	<div>
		<h3>Oops, We're So Sorry!</h3>
		<p>
			<img src="/includes/images/Error.png" class="pull-left" style="width:200px;">
			Well, our bone-headed programmers have done it again and broken the site. No more pizza for them!<br>
			As for you, don't worry-- we've already formed a team of server ninjas ready to jump in and fix the issue.<br>
			Please try a different portion of the site for now.<br>
			<br>
			<a class="btn btn-default" href="/">Return Home</a>
		</p>
	</div>
	
	
	<cfinclude template="error_footer.cfm">
</cfoutput>
