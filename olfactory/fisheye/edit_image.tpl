{strip}
{if $imageId}
	{assign var=pagetab value=edit}
{else}
	{assign var=pagetab value=upload}
{/if}
{include file="bitpackage:fisheye/image_tabs.tpl" pagetab=$pagetab}

<div class="admin fisheye">
	<div class="header">
		<h1>{if $gContent->mInfo.image_id}{tr}Edit Image{/tr}: {$gContent->mInfo.title} {else}{tr}Add New Image{/tr} {/if}</h1>
	</div>
	
	<div class="body">
		{form enctype="multipart/form-data" legend="Edit Image"}
			{formfeedback error=$errors}

			<input type="hidden" name="gallery_id" value="{$galleryId|escape}"/>
			<input type="hidden" name="image_id" value="{$imageId}"/>
			<input type="hidden" name="MAX_FILE_SIZE" value="1000000000" />

			<div class="row">
				{formlabel label="Title" for="image-title"}
				{forminput}
					<input type="text" name="title" id="image-title" value="{$gContent->mInfo.title|escape}" maxlength="160" size="50"/>
				{/forminput}
			</div>

			<div class="row">
				{formlabel label="Description" for="image-desc"}
				{forminput}
					<textarea name="edit" id="image-desc" rows="4" cols="40">{$gContent->mInfo.data|escape:html}</textarea>
				{/forminput}
			</div>

			<div class="row">
				{if $gContent->mInfo.image_file.source_url}
					{formfeedback warning="Uploading a new image will replace the currently existing one."}
					{assign var=repl value=Replacement}
				{/if}
				{formlabel label="Upload $repl Image" for="image-upload"}
				{forminput}
					<input type="file" name="imageFile" id="image-upload"/>
				{/forminput}
			</div>

			<div class="row">
				{formlabel label="Current Image"}
				{forminput}
					{if $gContent->mInfo.image_file.storage_path}
						<a href="{$gBitLoc.FISHEYE_PKG_URL}view_image.php?image_id={$gContent->mImageId}"><img src="{$gContent->mInfo.image_file.thumbnail_url.medium}" alt="{$gContent->mInfo.title|escape}" /></a>
						<br />
						<small>
							{if $gContent->mInfo.width && $gContent->mInfo.height}
								{tr}Full size{/tr} - <a href="{$gContent->mInfo.image_file.source_url}">{$gContent->mInfo.width} x {$gContent->mInfo.height}</a>
							{elseif $gContent->mInfo.image_file.source_url}
								<a href="{$gContent->mInfo.image_file.source_url}">{tr}Full size{/tr}</a>
							{/if}
						</small>
					{else}
						<img src="{$gBitLoc.FISHEYE_PKG_URL}image/no_image.png" alt="{$gContent->mInfo.title|escape}" />
					{/if}
				{/forminput}
			</div>

			<div class="row">
				{formlabel label="Regenerate Thumbnails"}
				{forminput}
					<input type="checkbox" name="generate_thumbnails" value="1"/> 
				{/forminput}
			</div>

			<div class="row">
				{include file="bitpackage:fisheye/resize_image_select.tpl"}
			</div>

			{if $gBitSystem->isPackageActive( 'gatekeeper' ) }
				{include file="bitpackage:gatekeeper/choose_security.tpl"}
			{/if}

			<div class="row">
				{formlabel label="Add This Image to These Galleries"}
				{forminput}
					{foreach from=$galleryList item=gal key=galleryId}
							<input type="checkbox" name="galleryAdditions[]" value="{$galleryId}"
								{if $requested_gallery == $galleryId}
									checked="checked"
								{else}
									{if $gContent->mInfo.parent_galleries[$galleryId]}
										checked="checked"
									{/if}
								{/if}
							/>
							<a href="{$gBitLoc.FISHEYE_PKG_URL}view.php?gallery_id={$galleryId}">{$gal.title}</a>
							<br />
					{foreachelse}
						<div>{tr}No Galleries Found{/tr}</div>
					{/foreach}
				{/forminput}
			</div>

			<div class="row submit">
				<input type="submit" name="saveImage" value="Save Image"/>
			</div>
		{/form}
	</div> <!-- class="body" -->
</div> <!-- class="admin fisheye" -->

{/strip}
