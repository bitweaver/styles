{strip}
{include file="bitpackage:kernel/header.tpl"}

{if $print_page ne "y"}
	{if $gBitSystem->isFeatureActive( 'bidirectional_text' )}
		<div dir="rtl">
	{/if}

	{include file="bitpackage:kernel/top.tpl"}

	<div id="wrap1">
		{if $gBitSystem->isFeatureActive( 'left_column' ) && $l_modules && !$gHideModules}
			<div id="bitleft">
				{section name=homeix loop=$l_modules}
					{$l_modules[homeix].data}
				{/section}
			</div><!-- end #bitleft -->
		{/if}

		{if $gBitSystem->isFeatureActive( 'right_column' ) && $r_modules && !$gHideModules}
			<div id="bitright">
				{section name=homeix loop=$r_modules}
					{$r_modules[homeix].data}
				{/section}
			</div><!-- end #bitright -->
		{/if}

		<div id="bitmain" class="bit-cols-{if $gBitSystem->isFeatureActive( 'left_column' ) && $l_modules && !$gHideModules and $gBitSystem->isFeatureActive( 'right_column' ) && $r_modules && !$gHideModules}3{elseif $gBitSystem->isFeatureActive( 'left_column' ) && $l_modules && !$gHideModules}2l{elseif $gBitSystem->isFeatureActive( 'right_column' ) && $r_modules && !$gHideModules}2r{else}1{/if}">
			{include file="bitpackage:liberty/display_structure.tpl"}

			<a style="padding:0;margin:0;border:0;" name="content"></a>
			{if $pageError}
				<div class="error">{$pageError}</div>
			{/if}

			{include file=$mid}

			{if $gBitSystem->isFeatureActive( 'bot_bar' )}
				<div id="bitbottom">
					{include file="bitpackage:kernel/bot_bar.tpl"}
				</div>
			{/if}
		</div>
	</div>

	{if $gBitSystem->isFeatureActive( 'bidirectional_text' )}
		</div>
	{/if}
{/if}

{include file="bitpackage:kernel/footer.tpl"}
{/strip}
