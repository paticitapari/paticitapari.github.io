<!---
	This file is part of the Dopetrope Mura CMS Theme
--->
<cfoutput>

	<section>
		<cfif Len($.component('rssFeedHeading'))>
			<header>
				<#$.getHeaderTag('subHead1')#>
					#HTMLEditFormat($.setDynamicContent($.component('rssFeedHeading')))#
				</#$.getHeaderTag('subHead1')#>
			</header>
		</cfif>
		<cftry>
			<cffeed source="#$.component('rssFeedLink')#" query="rs" />
			<cfcatch>
				<cfset rs = QueryNew('') />
			</cfcatch>
		</cftry>
			
		<cfset it = $.getBean('beanIterator').setQuery(rs) />
		<cfset maxItems = Val($.component('rssFeedMaxItems')) />

		<cfif it.hasNext()>
			<ul class="dates">
				<cfloop condition="it.hasNext()">
					<cfset item = it.next() />
					<li>

						<!--- Date --->
						<cfset theDate = $.convertFeedDateTime(item.getValue('publisheddate')) />
						<cfif YesNoFormat($.component('rssFeedShowPubDate')) and IsDate(theDate)>
							<span class="date">
								#DateFormat(theDate, 'mmm')# <strong>#Day(theDate)#</strong>
							</span>
						</cfif>

						<!--- Title --->
						<#$.getHeaderTag('subHead2')#>
							<a href="#item.getValue('rsslink')#">
								#HTMLEditFormat(item.getValue('title'))#
							</a>
						</#$.getHeaderTag('subHead2')#>

						<!--- Summary --->
						<cfif YesNoFormat($.component('rssFeedShowSummary'))>
							#item.getValue('content')#
						</cfif>
					</li>

					<cfif it.getRecordIndex() eq maxItems>
						<cfbreak />
					</cfif>
				</cfloop>
			</ul>
		<cfelse>
			#$.dspNoItemsNotice()#
		</cfif>
	</section>

</cfoutput>