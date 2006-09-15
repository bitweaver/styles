{include file="bitpackage:kernel/header.tpl"}
{strip}
{if $print_page ne "y"}
	{include file="bitpackage:kernel/top.tpl"}

	{include file="bitpackage:liberty/display_structure.tpl"}

	<div id="content">
		{$pageError}
		{include file=$mid}
	</div>

	{if $gBitSystem->isFeatureActive( 'site_left_column' ) && $l_modules && !$gHideModules}
		{section name=homeix loop=$l_modules}
			{$l_modules[homeix].data}
		{/section}
		<a href="#content">{tr}back to content{/tr}</a><br />
	{/if}

	{if $gBitSystem->isFeatureActive( 'site_right_column' ) && $r_modules && !$gHideModules}
		{section name=homeix loop=$r_modules}
			{$r_modules[homeix].data}
		{/section}
		<a href="#content">{tr}back to content{/tr}</a><br />
	{/if}

	{if $gBitSystem->isFeatureActive( 'site_top_bar' )}
		<h3>Site Navigation</h3>
		{include file="bitpackage:kernel/top_bar.tpl"}
		<a href="#content">{tr}back to content{/tr}</a><br />
	{/if}

	{if $gBitSystem->isFeatureActive( 'site_bot_bar' )}
		{include file="bitpackage:kernel/bot_bar.tpl"}
	{/if}

	{include file="bitpackage:kernel/footer.tpl"}
{/if}
{/strip}

