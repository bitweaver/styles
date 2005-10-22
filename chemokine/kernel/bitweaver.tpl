{include file="bitpackage:kernel/header.tpl"}

{if $print_page ne "y"}
	{if $gBitSystem->isFeatureActive( 'feature_bidi' )}
		<div dir="rtl">
	{/if}

	{include file="bitpackage:kernel/top.tpl"}

	<div id="wrap1">
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

		<div id="bitmain">
			{include file="bitpackage:liberty/display_structure.tpl"}

			<a style="padding:0;margin:0;border:0;" name="content"></a>
			{if $pageError}
				<div class="error">{$pageError}</div>
			{/if}

			{include file=$mid}

			{if $gBitSystem->isFeatureActive( 'feature_bot_bar' )}
				<div id="bitbottom">
					{include file="bitpackage:kernel/bot_bar.tpl"}
				</div>
			{/if}
		</div>

	</div>

	{if $gBitSystem->isFeatureActive( 'feature_bidi' )}
		</div>
	{/if}
{/if}

{include file="bitpackage:kernel/footer.tpl"}
