{strip}

<div class="header">
	
	{if $gBitSystem->isFeatureActive( 'wiki_page_title' )}
		<h1>{$pageInfo.title|escape}</h1>
		{if $pageInfo.page_is_cached}<span class="cached">(cached)</span>{/if}
	{/if}

	{if $gBitSystem->isFeatureActive( 'wiki_description' ) and $description}
		<p class="description">{$pageInfo.description|escape}</p>
	{/if}

	<div class="services">
		{include file="bitpackage:wiki/page_date_bar.tpl"}
		{include file="bitpackage:liberty/services_inc.tpl" serviceLocation='body' serviceHash=$gContent->mInfo}
		<span class="clear"><!-- --></span>
	</div>
	
	<span class="clear"><!-- --></span>

</div>

{/strip}