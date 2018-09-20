<!---
	This file is part of the Dopetrope Mura CMS Theme
--->
<cfoutput>
	#$.dspThemeInclude('templates/inc/html_head.cfm')#

	<body class="no-sidebar">

		#$.dspThemeInclude('templates/inc/header.cfm')#

		<section>
			<div>
				<div class="row">
					<div class="12u skel-cell-important">
						<!-- Content -->
						#$.dspThemeInclude('templates/inc/body.cfm')#
					</div>
				</div>
			</div>
		</section>

	#$.dspThemeInclude('templates/inc/footer.cfm')#
</cfoutput>