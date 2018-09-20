<!---
	This file is part of the Dopetrope Mura CMS Theme
--->
<cfoutput>
	#$.dspThemeInclude('templates/inc/html_head.cfm')#

	<body class="right-sidebar">

		#$.dspThemeInclude('templates/inc/header.cfm')#

		<section>
			<div>
				<div class="row">

					<!-- Content -->
					<div class="8u skel-cell-important">
						<!-- Main Content / Body -->
						#$.dspThemeInclude('templates/inc/body.cfm')#
					</div>

					<!-- Sidebar -->
						<div class="sidebar 4u">
							<!--- Right Column Content Display Objects --->
							#$.dspObjects(3)#
						</div>
					<!-- // Sidebar // -->

				</div>
			</div>
		</section>

	#$.dspThemeInclude('templates/inc/footer.cfm')#
</cfoutput>