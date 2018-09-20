/*
	This file is part of the Dopetrope Mura CMS Theme
*/
component extends="mura.cfobject" output="false" {

	/*
			This is the THEME contentRenderer.cfc

			* Add theme-specific methods here
			* Any methods here will be accessible with the following notation:
				$.yourFunctionName()
	*/

	// contentRenderer settings
		// GENERAL
			this.jsLib = 'jquery';
			this.jsLibLoaded = true;
			this.suppressWhitespace = false;
			//this.showInlineEditor=true;
			//
		// layout manager
			this.layoutmanager=true;
			this.legacyObjects=false;

		// nav
			this.ulTopClass = '';

		// wrappers
			this.generalWrapperClass = 'box';
			this.navWrapperClass = this.generalWrapperClass;
			this.tagCloudWrapperClass = this.generalWrapperClass;
			//this.userToolsWrapperClass = this.generalWrapperClass;

		// headings
			this.headline = 'h1';
			this.subHead1 = 'h2';
			this.subHead2 = 'h3';
			this.subHead3 = 'h4';
			this.subHead4 = 'h5';

		// buttons
			this.customButtonClass = 'button';
			this.customButtonClassAlt = 'button alt';

			this.searchResultWrapperClass='';
			this.searchResultsRowClass='';
			this.searchResultsMoreResultsRowClass='';
			this.searchAgainRowClass='';
			this.searchFormSubmitClass=this.customButtonClass;
			this.searchAgainSubmitClass=this.customButtonClass;
			this.loginWrapperClass='';
			this.formButtonClass=this.customButtonClass;
			this.commentSubmitButtonClass=this.customButtonClass;
			this.formBuilderSubmitClass=this.customButtonClass;
			this.loginFormSubmitClass=this.customButtonClass;
			this.mailingListSubmitClass=this.customButtonClass;
			this.userToolsLoginFormSubmitClass=this.customButtonClass;
			this.notRegisteredLinkClass=this.customButtonClass;
			this.editProfileExtAttributeDownloadButtonClass=this.customButtonClass;
			this.editProfileSubmitButtonClass=this.customButtonClass;
			this.userToolsLoginFormSubmitClass=this.customButtonClass;
			this.userToolsNotRegisteredLinkClass=this.customButtonClass;
			this.userToolsEditProfileLinkClass=this.customButtonClass;
			this.userToolsLogoutLinkClass=this.customButtonClassAlt;
			this.navWrapperClass="box";
			this.navFolderWrapperClass=this.navWrapperClass;
			this.navCalendarWrapperClass=this.navWrapperClass;
			this.navStandardWrapperClass=this.navWrapperClass;
			this.navArchiveWrapperClass=this.navWrapperClass;
			this.raterObjectWrapperClass=this.navWrapperClass;


	// custom theme methods
		public any function getSectionTitle() {
			return variables.$.getCrumbVarByLevel('title', 1);
		}


	// class extension specific methods
		// helper for RSS Feeds
			public any function convertFeedDateTime(string httpDateTime) {
				return IsDate(arguments.httpDateTime)
					? LSDateFormat(ParseDateTime(arguments.httpDateTime), 'long')
					: 'invalid';
			}


		// used to populate the homeFeature1Feed and componentSpotlight selectbox class extension
			public any function getLocalFeeds() {
				return variables.$.getBean('feedManager').getFeeds(siteid=variables.$.event('siteid'), type='local');
			}

			public any function getLocalFeedNames() {
				var rs = getLocalFeeds();
				return rs.getRecordcount()
					? ValueList(rs.name, '^')
					: 'No Content Collections Exist!';
			}

	// Helpers
		public any function dspComponent(string componentid) {
			return variables.$.dspObject(
				object='component'
				, objectid=arguments.componentid
			);
		}

		public any function dspNoFeedNotice(feedName='') {
			return '<h3>The #HTMLEditFormat(arguments.feedName)# Content Collection Does Not Exist</h3><p>Go to <strong>Modules &gt; Content Collections</strong> and create it!</p>';
		}

		public any function dspNoItemsNotice() {
			return '<h3>No items exist yet.</h3>';
		}

		public any function columnizeFeed(
			string feedName=''
			, numeric maxItems=6
			, numeric columnCount=3
			, string readMoreText='Learn More'
			, boolean showDate=false
			, boolean showCredits=false
			, boolean showCommentCount=false
		) {
			var local = {};
			local.item = '';
			local.str = '';
			local.feed = variables.$.getBean('feed')
				.loadBy(name=arguments.feedName)
				.setMaxItems(Val(arguments.maxItems))
				.setNextN(Val(arguments.maxItems));
			local.it = local.feed.getIterator();
			local.totalItems = it.getRecordcount();
			local.itemsPerRow = Val(arguments.columnCount);
			local.itemsPerColumn = itemsPerRow ? Round(totalItems/itemsPerRow) : 0;
			local.columnClass = arguments.columnCount ? Round(12/arguments.columnCount) & 'u' : 0;

			savecontent variable="str" {
				if ( feed.getIsNew() ) {
					WriteOutput(dspNoFeedNotice(feedName=arguments.feedName));
				} else if ( !totalItems ) {
					WriteOutput(dspNoItemsNotice());
				} else {
					include 'content_types/page_home/includes/homeFeeds.cfm';
				}
			}

			return str;
		}

}
