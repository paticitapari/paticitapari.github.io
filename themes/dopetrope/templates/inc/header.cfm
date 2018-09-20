<!---
	This file is part of the Dopetrope Mura CMS Theme
--->
<cfoutput>
	<!-- Header Wrapper -->
		<div id="header-wrapper">
			<div class="container">
				<div class="row">
					<div class="12u">

						<!-- Header -->
							<section id="header">

								<!-- Logo -->
									<h1>
										<a href="#$.createHREF(filename='')#">
											#HTMLEditFormat($.siteConfig('site'))#
										</a>
									</h1>

								<!-- Nav -->
									<cf_CacheOMatic key="dspPrimaryNav#$.content('contentid')#">
										<nav id="nav">
											<!---
												For information on dspPrimaryNav(), visit:
												http://docs.getmura.com/v6/front-end/template-variables/document-body/
											--->
											#$.dspPrimaryNav(
												viewDepth=1
												, id='navPrimary'
												, class=''
												, displayHome='always'
												, closeFolders=true
												, showCurrentChildrenOnly=false
												, liHasKidsClass='dropdown'
												, liHasKidsAttributes=''
												, liCurrentClass='current_page_item'
												, liCurrentAttributes=''
												, liHasKidsNestedClass='dropdown-submenu'
												, aHasKidsClass='dropdown-toggle'
												, aHasKidsAttributes=''
												, aCurrentClass=''
												, aCurrentAttributes=''
												, ulNestedClass='dropdown-menu'
												, ulNestedAttributes=''
												, aNotCurrentClass=''
												, siteid=$.event('siteid')
											)#
										</nav>
									</cf_CacheOMatic>

							</section>

					</div>
				</div>

				<!--- Home Page Header --->
				#$.dspThemeInclude('content_types/page_home/includes/homeHeader.cfm')#

			</div>
		</div>
	<!-- // Header Wrapper // -->

	<!-- Main Wrapper -->
		<div id="main-wrapper">
			<div class="container">
				<div class="row">
					<div class="12u">
</cfoutput>
