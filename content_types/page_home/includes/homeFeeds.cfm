<cfoutput>
	<cfif local.it.hasNext()>
		<cfloop condition="local.it.hasNext()">
			<!--- Start Row --->
			<cfif not local.it.currentIndex() mod local.itemsPerRow>
				<div class="row">
			</cfif>
					<!--- THE ITEM --->
					<cfset local.item = local.it.next() />
					<div class="#local.columnClass#">
						<section class="box">

							<!--- Primary Image --->
								<cfset local.img = variables.$.getURLForImage(fileid=local.item.getValue('fileid'), size='componentheaderimage') />
								<cfif Len(local.img)>
									<a href="#local.item.getValue('url')#" class="image image-full">
										<img src="#local.img#" alt="#HTMLEditFormat(local.item.getValue('menuTitle'))#" />
									</a>
								</cfif>

							<!--- Title --->
								<header>
									<h3>#HTMLEditFormat(local.item.getValue('menuTitle'))#</h3>
									<cfif arguments.showCredits and Len(item.getValue('credits'))>
										<p class="credits">By #HTMLEditFormat(item.getValue('credits'))#</p>
									</cfif>
									<cfif arguments.showDate>
										<span class="byline">#LSDateFormat(local.item.getValue('releaseDate'), 'long')#</span>
									</cfif>
								</header>

							<!--- Summary --->
								#local.item.getValue('summary')#

							<!--- Links --->
									<footer class="actions">
										<!--- Read More Link --->
										<cfif Len(arguments.readMoreText)>
											<a href="#local.item.getValue('url')#" class="button alt fa fa-file-text">
												#HTMLEditFormat(arguments.readMoreText)#
											</a> 
										</cfif>
										<!--- Comments Count / Link --->
										<cfif arguments.showCommentCount>
											<cfset local.thisCommentCount = variables.$.getBean('contentGateway').getCommentCount($.event('siteID'),local.item.getValue('contentID')) />
											<a href="#local.item.getValue('url')###mura-comments" class="button fa fa-comment">#Val(local.thisCommentCount)# Comment<cfif Val(local.thisCommentCount) neq 1>s</cfif></a>
										</cfif>
									</footer>

						</section>
					</div>

			<cfif not local.it.currentIndex() mod local.itemsPerRow or local.it.currentIndex() eq local.totalItems>
				</div><!-- @End Row -->
			</cfif>
		</cfloop>
	</cfif>
</cfoutput>