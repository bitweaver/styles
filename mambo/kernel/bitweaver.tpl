{include file="bitpackage:kernel/header.tpl"}
{strip}
{if $print_page ne "y"}
	{if $gBitSystem->isFeatureActive( 'feature_bidi' )}
		<div dir="rtl">
	{/if}

	<div id="bitbody">
		{include file="bitpackage:kernel/top.tpl"}

		{if $gBitSystem->isFeatureActive( 'feature_right_column' ) && $r_modules && !$gHideModules}
			<div id="bitright">
				{section name=homeix loop=$r_modules}
					{$r_modules[homeix].data}
				{/section}
			</div><!-- end #bitright -->
		{/if}

		{if $gBitSystem->isFeatureActive( 'feature_left_column' ) && $l_modules && !$gHideModules}
			<div id="bitleft">
				{section name=homeix loop=$l_modules}
					{$l_modules[homeix].data}
				{/section}
			</div><!-- end #bitleft -->
		{/if}

		<div id="bitmain" class="bit-cols-{if $gBitSystem->isFeatureActive( 'feature_left_column' ) && $l_modules && !$gHideModules}2{else}1{/if}">
			{include file="bitpackage:liberty/display_structure.tpl"}
			{if $pageError}
				<div class="error">{$pageError}</div>
			{/if}
			{include file=$mid}
		</div><!-- end #bitmain -->

		<div id="bitbottom">
			{if $gBitSystem->isFeatureActive( 'feature_bot_bar' )}
				{include file="bitpackage:kernel/bot_bar.tpl"}
			{/if}
		</div><!-- end #bitbottom -->
	</div><!-- end #bitbody -->

	{if $gBitSystem->isFeatureActive( 'feature_bidi' )}
		</div>
	{/if}

	{include file="bitpackage:kernel/footer.tpl"}
{/if}
{/strip}
