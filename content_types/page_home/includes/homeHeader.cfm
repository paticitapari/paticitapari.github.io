<!---
	This file is part of the Dopetrope Mura CMS Theme
--->
<cfoutput>
	<!-- Home Page Output -->
		<cfif $.content('subType') eq 'Home'>

			<!-- Banner -->
				<div class="row">
					<div class="12u">
							<section id="banner">
								<!--- Primary Associated Image --->
								<cfset img = $.getURLForImage(fileid=$.content('fileid'), size='bodyimage') />
								<cfif Len(img)>
									<span class="image image-full">
										<img src="#img#" alt="" />
									</span>
								</cfif>
								<!--- Heading + Subheading --->
								<cfif Len($.content('homeHeaderHeading'))>
									<header>
										<h2>#$.renderEditableAttribute(attribute='homeHeaderHeading', label='Main Header Heading')#</h2>
										<cfif Len($.content('homeHeaderSubheading'))>
											<span class="byline">
												#$.renderEditableAttribute(attribute='homeHeaderSubheading', label='Main Header Subheading')#
											</span>
										</cfif>
									</header>
								</cfif>
							</section>
					</div>
				</div>
			<!-- // Banner // -->

			<!-- Home Page Boxes -->
				<div class="row">
					<div class="12u">
							
						<!-- Intro -->
							<section id="intro">
							
								<div>
									<div class="row">
										<!-- Left Box -->
											<div class="4u">
												<section class="first">
													<span class="pennant #$.content('homeBoxLeftPennantStyle')#">
														<span class="fa #$.content('homeBoxLeftIcon')#"></span>
													</span>
													<cfif Len($.content('homeBoxLeftHeading'))>
														<header>
															<h2>
																#$.renderEditableAttribute(attribute='homeBoxLeftHeading', label='Left Box Heading')#
															</h2>
														</header>
													</cfif>
													#$.renderEditableAttribute(attribute='homeBoxLeftBody', label='Left Box Body', type='htmlEditor')#
												</section>
											</div>
										<!-- // Left Box // -->

										<!-- Middle Box -->
											<div class="4u">
												<section class="middle">
													<span class="pennant #$.content('homeBoxMiddlePennantStyle')#">
														<span class="fa #$.content('homeBoxMiddleIcon')#"></span>
													</span>
													<cfif Len($.content('homeBoxMiddleHeading'))>
														<header>
															<h2>
																#$.renderEditableAttribute(attribute='homeBoxMiddleHeading', label='Middle Box Heading')#
															</h2>
														</header>
													</cfif>
													#$.renderEditableAttribute(attribute='homeBoxMiddleBody', label='Middle Box Body', type='htmlEditor')#
												</section>
											</div>
										<!-- // Middle Box // -->

										<!-- Right Box -->
											<div class="4u">
												<section class="last">
													<span class="pennant #$.content('homeBoxRightPennantStyle')#">
														<span class="fa #$.content('homeBoxRightIcon')#"></span>
													</span>
													<cfif Len($.content('homeBoxRightHeading'))>
														<header>
															<h2>
																#$.renderEditableAttribute(attribute='homeBoxRightHeading', label='Right Box Heading')#
															</h2>
														</header>
													</cfif>
													#$.renderEditableAttribute(attribute='homeBoxRightBody', label='Right Box Body', type='htmlEditor')#
												</section>
											</div>
										<!-- // Right Box // -->
									</div>
								</div>

								<div class="actions">
									<cfif Len($.content('homeBoxButtonTextLeft')) and Len($.content('homeBoxButtonLinkLeft'))>
										<a href="#$.content('homeBoxButtonLinkLeft')#" class="button big #$.content('homeBoxButtonStyleLeft')#">#HTMLEditFormat($.content('homeBoxButtonTextLeft'))#</a>
									</cfif>
									<cfif Len($.content('homeBoxButtonTextRight')) and Len($.content('homeBoxButtonLinkRight'))>
										<a href="#$.content('homeBoxButtonLinkRight')#" class="button big #$.content('homeBoxButtonStyleRight')#">#HTMLEditFormat($.content('homeBoxButtonTextRight'))#</a>
									</cfif>
								</div>
							
							</section>

					</div>
				</div>
			<!-- // Home Page Boxes // -->
		</cfif>
	<!-- // Home Page Output // -->
</cfoutput>