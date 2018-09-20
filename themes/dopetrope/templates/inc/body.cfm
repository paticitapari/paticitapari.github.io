<!---
	This file is part of the Dopetrope Mura CMS Theme
--->
<cfoutput>	

	<!--- Breadcrumbs --->
	<!--- <nav>#$.dspCrumbListLinks(separator='&nbsp;/&nbsp;&nbsp;')#</nav> --->

	<article class="box is-post">

		<!--- Primary Associated Image --->					
			<cfset img = $.getURLForImage(fileid=$.content('fileid'), size='bodyimage') />
			<cfif Len(img)>
				<span class="image image-full">
					<img src="#img#" alt="#HTMLEditFormat($.content('title'))#" />
				</span>
			</cfif>

		<!--- Title + Credits (byline) --->	
			<header>
				<h2>#$.renderEditableAttribute(attribute='title', label='Page Title')#</h2>
				<cfif Len($.content('credits'))>
					<span class="byline">
						#$.renderEditableAttribute(attribute='credits', label='Credits')#
					</span>
				</cfif>
			</header>

		<!--- Content --->
			<!--- 
				For information on dspBody(), visit:
				http://docs.getmura.com/v6/front-end/template-variables/document-body/
			--->
			#$.dspBody(
				body=$.content('body')
				, pageTitle=''
				, crumbList=false
				, showMetaImage=false
			)#

			<!--- Main Content Display Objects --->
				<cfif Len($.dspObjects(2))>
					<div class="row">
						<div class="12u skel-cell-important">
							#$.dspObjects(2)#
						</div>
					</div>
				</cfif>
	</article>

</cfoutput>