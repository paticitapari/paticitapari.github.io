<!---
This file is part of the Dopetrope Mura CMS Theme
--->
<cfoutput>

						</div><!-- // 12u // -->
				</div><!-- // row // -->
			</div><!-- // container // -->
		</div>
	<!-- // Main Wrapper // -->

	<!-- Footer Wrapper -->
		<div id="footer-wrapper">
			
			<!-- Footer -->
				<section id="footer" class="container">

					<!--- Footer : Top Row --->
					<div class="row">

						<!--- Latest News --->
						<div class="8u">
							#$.dspComponent('[ Footer ] RSS Feed')#
						</div>

						<!--- What's this all about? --->
						<div class="4u">
							#$.dspComponent('[ Footer ] About')#
						</div>
					</div>

					<!--- Footer : Bottom Row --->
					<div class="row">

						<!--- Footer Links 1 --->
						<div class="4u">
							#$.dspComponent('[ Footer ] Links 1')#
						</div>

						<!--- Footer Links 2 --->
						<div class="4u">
							#$.dspComponent('[ Footer ] Links 2')#
						</div>

						<!--- Get In Touch --->
						<div class="4u">
							#$.dspComponent('[ Footer ] Get in touch')#
						</div>

					</div>
					<!--- // Bottom Row // --->

					<!--- Copyright + Props --->
					<div class="row">
						<div class="12u">
								<div id="copyright">
									<ul class="links">
										<li>&copy; #Year(Now())# #HTMLEditFormat($.siteConfig('site'))#	</li>
										<li>Images: <a href="http://facebook.com/DreametryDoodle">Dreametry Doodle</a></li>
										<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
										<li>Powered by: <a href="http://www.getmura.com">Mura CMS</a></li>
									</ul>
								</div>
						</div>
					</div>

				</section>
			<!-- // Footer -->

		</div>
	<!-- // Footer Wrapper // -->

	</body>
</html>
</cfoutput>