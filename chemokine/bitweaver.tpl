{include file="bitpackage:kernel/header.tpl"}

{if $print_page ne "y"}

{if $gBitSystem->isFeatureActive( 'feature_bidi' )}
<div dir="rtl">
{/if}

{if $gBitSystem->isFeatureActive( 'feature_top_bar' )}
	{include file="bitpackage:kernel/top_bar.tpl"}
{/if}

{include file="bitpackage:kernel/top.tpl"}

{if ( $gBitSystem->isFeatureActive( 'feature_left_column' ) && $l_modules && !$gHideModules ) or ( $gBitSystem->isFeatureActive( 'feature_right_column' ) && $r_modules && !$gHideModules ) }
<div id="bitmodules">
	{section name=homeix loop=$l_modules}
	{$l_modules[homeix].data}
	{/section}
	{section name=homeix loop=$r_modules}
	{$r_modules[homeix].data}
	{/section}
</div>
{/if}

<div id="tikimain">
	{include file="bitpackage:liberty/display_structure.tpl"}

	{if $pageError}
	<div class="error">{$pageError}</div>
	{/if}

	{include file=$mid}
</div>

{if $gBitSystem->isFeatureActive( 'feature_bot_bar' )}
<div id="tikibottom">
	{include file="bitpackage:kernel/bot_bar.tpl"}
</div>
{/if}

{if $gBitSystem->isFeatureActive( 'feature_bidi' )}
</div>
{/if}

{include file="bitpackage:kernel/footer.tpl"}

{/if}
