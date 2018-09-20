<!---
	This file is part of the Dopetrope Mura CMS Theme
--->
<cfoutput>
	#$.dspThemeInclude('templates/inc/html_head.cfm')#

	<body class="left-sidebar">

		#$.dspThemeInclude('templates/inc/header.cfm')#

		<section>
			<div>
				<div class="row">

					<!-- Sidebar -->
						<div class="sidebar 4u">
							<!--- Left Column Content Display Objects --->
							#$.dspObjects(1)#
						</div>
					<!-- // Sidebar // -->

					<!-- Content -->
					<div class="8u skel-cell-important">
						<!-- Main Content / Body -->
						#$.dspThemeInclude('templates/inc/body.cfm')#
					</div>

				</div>
			</div>
		</section>

	#$.dspThemeInclude('templates/inc/footer.cfm')#
</cfoutput>