<!---
	This file is part of the Dopetrope Mura CMS Theme
--->
<cfoutput>
	#$.dspThemeInclude('templates/inc/html_head.cfm')#

	<body class="homepage">

		#$.dspThemeInclude('templates/inc/header.cfm')#

		<!---
					The home page doesn't have a traditional Content 'body' section.
					However, if someone is attempting to login or perform some other
					event, we should be able to render any display output to the user.

					For information on dspBody(), visit:
					http://docs.getmura.com/v6/front-end/template-variables/document-body/
		--->
		<cfif Len($.event('display'))>
					<section class="box">
							#$.dspBody(
								body=$.content('body')
								, pageTitle=''
								, crumbList=false
								, showMetaImage=false
							)#
					</section>
				</div><!-- // 12u // -->
			</div><!-- // row // -->
			<div class="row">
				<div class="12u">
		</cfif>

				<!-- Home Feature 1 Area -->
					<section>
						<cfif Len($.content('homeFeature1Heading'))>
							<header class="major">
								<h2>#$.renderEditableAttribute(attribute='homeFeature1Heading', label='Feature 1 Heading')#</h2>
							</header>
						</cfif>
						<div>
							#$.columnizeFeed(
								feedName=$.content('homeFeature1Feed')
								, maxItems=Val($.content('homeFeature1MaxItems'))
								, columnCount=Val($.content('homeFeature1ColumnCount'))
								, readMoreText=$.content('homeFeature1ReadMoreText')
								, showDate=YesNoFormat($.content('homeFeature1ShowDate'))
								, showCredits=YesNoFormat($.content('homeFeature1ShowCredits'))
								, showCommentCount=YesNoFormat($.content('homeFeature1ShowCommentCount'))
							)#
						</div>
					</section>
				<!-- // Home Feature 1 Area -->

			</div><!-- // 12u // -->
		</div><!-- // row // -->

		<div class="row">
			<div class="12u">

				<!-- Home Feature 2 Area -->
					<section>
						<cfif Len($.content('homeFeature2Heading'))>
							<header class="major">
								<h2>#$.renderEditableAttribute(attribute='homeFeature2Heading', label='Feature 2 Heading')#</h2>
							</header>
						</cfif>
						<div>
							#$.columnizeFeed(
								feedName=$.content('homeFeature2Feed')
								, maxItems=Val($.content('homeFeature2MaxItems'))
								, columnCount=Val($.content('homeFeature2ColumnCount'))
								, readMoreText=$.content('homeFeature2ReadMoreText')
								, showDate=YesNoFormat($.content('homeFeature2ShowDate'))
								, showCredits=YesNoFormat($.content('homeFeature2ShowCredits'))
								, showCommentCount=YesNoFormat($.content('homeFeature2ShowCommentCount'))
							)#
						</div>
					</section>
				<!-- // Home Feature 2 Area // -->

	#$.dspThemeInclude('templates/inc/footer.cfm')#
</cfoutput>