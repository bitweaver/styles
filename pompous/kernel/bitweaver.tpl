{strip}
{include file="bitpackage:kernel/header.tpl"}
<div id="bitbody" class="pkg-{$smarty.const.ACTIVE_PACKAGE|lower}">
	{if $gBitSystem->isFeatureActive( 'top_bar' )}
		{include file="bitpackage:kernel/top_bar.tpl"}
	{/if}

	{include file="bitpackage:kernel/top.tpl"}

	<div id="bitmain">
		<a name="content"></a>
		{if $pageError}
			<div class="error">{$pageError}</div>
		{/if}
		<div id="bitbody">
			<div id="bitmain" class="bit-cols-{if $gBitSystem->isFeatureActive( 'left_column' ) && $l_modules && !$gHideModules and $gBitSystem->isFeatureActive( 'right_column' ) && $r_modules && !$gHideModules}3{elseif $gBitSystem->isFeatureActive( 'left_column' ) && $l_modules && !$gHideModules}2l{elseif $gBitSystem->isFeatureActive( 'right_column' ) && $r_modules && !$gHideModules}2r{else}1{/if}">
				{include file="bitpackage:liberty/display_structure.tpl"}
				<a style="padding:0;margin:0;border:0;" name="content"></a>
				{if $pageError}
					<div class="error">{$pageError}</div>
				{/if}
				{include file=$mid}
				<div class="clear"></div>
			</div><!-- end #bitmain -->

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

			<div id="bitbottom">
				{if $gBitSystem->isFeatureActive( 'bot_bar' )}
					{include file="bitpackage:kernel/bot_bar.tpl"}
				{/if}
			</div><!-- end #bitbottom -->
		</div><!-- end #bitbody -->
	</div><!-- end #bitmain -->
</div><!-- end #bitbody -->
{include file="bitpackage:kernel/footer.tpl"}
{/strip}
