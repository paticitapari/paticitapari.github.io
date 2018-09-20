<mura>
	<extensions>
		<!---
			This file is part of the Dopetrope Mura CMS Theme
		--->
		<extension type="Component" subType="WithHeadingAndButtonLink">

			<attributeset name="Other Options" container="Basic">

				<!-- Header Image -->
					<attribute
						name="compHeaderImage"
						label="Header Image"
						hint="Optional image to appear above the title"
						type="file"
						defaultValue=""
						required="false"
						validation=""
						regex=""
						message=""
						optionList=""
						optionLabelList="" />
					<attribute
						name="compHeaderImagePlacement"
						label="Header Image Placement"
						hint="If you choose to upload an image, do you wish it to appear above, or below the Heading"
						type="radiogroup"
						defaultValue="above"
						required="false"
						validation=""
						regex=""
						message=""
						optionList="above^below"
						optionLabelList="Above Heading^Below Heading" />

				<!-- Heading -->
					<attribute
						name="compHeading"
						label="Heading"
						hint=""
						type="textbox"
						defaultValue=""
						required="false"
						validation=""
						regex=""
						message=""
						optionList=""
						optionLabelList="" />

				<!-- Button Link -->
					<attribute
						name="compButtonLinkHref"
						label="Button Link URL (including http://)"
						hint="Enter a URL if you wish to add a button below the content"
						type="textbox"
						defaultValue=""
						required="false"
						validation=""
						regex=""
						message=""
						optionList=""
						optionLabelList="" />
					<attribute
						name="compButtonLinkText"
						label="Button Link Text"
						hint="Enter the button text to display if you wish to add a button below the content"
						type="textbox"
						defaultValue=""
						required="false"
						validation=""
						regex=""
						message=""
						optionList=""
						optionLabelList="" />
					<attribute
						name="compButtonStyle"
						label="Link Button Style"
						hint="Normal is light red, alternative is dark grey"
						type="radiogroup"
						defaultValue="normal"
						required="false"
						validation=""
						regex=""
						message=""
						optionList="normal^alt"
						optionLabelList="Normal^Alternative" />

			</attributeset>
			<!-- // Other Options // -->

		</extension>
	</extensions>
</mura>
