{strip}
{if $gBitUser->hasPermission( 'bit_p_view_tabs_and_tools' )}
	<div class="pageactions tools">
		{if $gBitSystem->isPackageActive( 'pdf' ) && $gContent->hasUserPermission( 'bit_p_pdf_generation' )}
			{if $structureInfo.root_structure_id}
				<li><a title="{tr}create PDF{/tr}" href="{$gBitLoc.PDF_PKG_URL}index.php?structure_id={$structureInfo.root_structure_id}">{biticon ipackage="pdf" iname="pdf" iexplain="PDF"}</a></li>
			{else}
				<li><a title="{tr}create PDF{/tr}" href="{$gBitLoc.PDF_PKG_URL}index.php?content_id={$gContent->mContentId}">{biticon ipackage="pdf" iname="pdf" iexplain="PDF"}</a></li>
			{/if}
		{/if}
		{if $gContent->hasUserPermission('bit_p_admin')}
			<li><a title="{tr}Delete{/tr}" href="{$gBitLoc.FISHEYE_PKG_URL}edit_image.php?image_id={$gContent->mImageId}&amp;delete=1">{biticon ipackage=liberty iname="delete" iexplain="Delete Image"}</a></li>
		{/if}
	</div>
	<div class="clear"></div>
{/if}
{/strip}