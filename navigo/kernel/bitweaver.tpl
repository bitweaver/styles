{include file="bitpackage:kernel/header.tpl"}
{strip}
{if $print_page ne "y"}
	{if $gBitSystem->isFeatureActive( 'feature_bidi' )}
		<div dir="rtl">
	{/if}

	<div class="pkg-{$smarty.const.ACTIVE_PACKAGE|lower}">
		<div id="bitbody" class="bit-cols-{if $gBitSystem->isFeatureActive( 'feature_right_column' ) && $r_modules && !$gHideModules}2{else}1{/if}">
			<img id="bitlogo" src="{$smarty.const.THEMES_PKG_URL}styles/navigo/images/logo_small.png" alt="Navigo Systems" />

			<div id="bitmain">
				{include file="bitpackage:kernel/top.tpl"}

				{include file="bitpackage:liberty/display_structure.tpl"}
				<a style="padding:0;margin:0;border:0;" name="content"></a>
				{if $pageError}
					<div class="error">{$pageError}</div>
				{/if}
				{include file=$mid}
			</div><!-- end #bitmain -->

			{if $gBitSystem->isFeatureActive( 'feature_left_column' ) && $l_modules && !$gHideModules}
				<div id="bitleft">
					{section name=homeix loop=$l_modules}
						{$l_modules[homeix].data}
					{/section}
				</div><!-- end #bitleft -->
			{/if}

			{if $gBitSystem->isFeatureActive( 'feature_right_column' ) && $r_modules && !$gHideModules}
				<div id="bitright">
					{section name=homeix loop=$r_modules}
						{$r_modules[homeix].data}
					{/section}
				</div><!-- end #bitright -->
			{/if}

			<div id="bitbottom">
				{if $gBitSystem->isFeatureActive( 'feature_bot_bar' )}
					{include file="bitpackage:kernel/bot_bar.tpl"}
				{/if}
			</div><!-- end #bitbottom -->

		</div><!-- end #bitbody -->
	</div>
	{if $gBitSystem->isFeatureActive( 'feature_bidi' )}
		</div>
	{/if}
	{include file="bitpackage:kernel/footer.tpl"}
{/if}
{/strip}

