{include file="bitpackage:kernel/header.tpl"}
{strip}

{if $print_page ne "y"}
	{if $gBitSystem->isFeatureActive( 'bidirectional_text' )}
		<div dir="rtl">
	{/if}

	<a class="skip" href="#bitmain">{tr}Skip to content{/tr}</a>

	<div id="bitbody">
		<div id="bittop" style="background:#fff url({$smarty.const.THEMES_STYLE_URL}images/banner_{0|rand:5}.jpg) left top no-repeat">
			{if $gBitSystem->isFeatureActive( 'site_top_column' ) && $t_modules && !$gHideModules}
				{section name=homeix loop=$t_modules}
					{$t_modules[homeix].data}
				{/section}
			{/if}
		</div>

		{if $gBitSystem->isFeatureActive( 'site_right_column' ) && $r_modules && !$gHideModules}
			<div id="bitright">
				{section name=homeix loop=$r_modules}
					{$r_modules[homeix].data}
				{/section}
				{include file="bitpackage:users/mod_login_box.tpl" moduleTitle="Login"}
			</div><!-- end #bitright -->
		{/if}

		{if $gBitSystem->isFeatureActive( 'site_left_column' ) && $l_modules && !$gHideModules}
			<div id="bitleft">
				{section name=homeix loop=$l_modules}
					{$l_modules[homeix].data}
				{/section}
			</div><!-- end #bitleft -->
		{/if}

		<div id="bitmain" name="bitmain" class="bit-cols-{if $gBitSystem->isFeatureActive( 'site_left_column' ) && $l_modules && !$gHideModules}2{else}1{/if}">
			{include file="bitpackage:liberty/display_structure.tpl"}
			{if $pageError}
				<div class="error">{$pageError}</div>
			{/if}
			{include file=$mid}
		</div><!-- end #bitmain -->

		<div id="bitbottom">
			{if $gBitSystem->isFeatureActive( 'site_bot_bar' )}
				{include file="bitpackage:kernel/bot_bar.tpl"}
			{/if}
		</div><!-- end #bitbottom -->
	</div><!-- end #bitbody -->

	{if $gBitSystem->isFeatureActive( 'bidirectional_text' )}
		</div>
	{/if}

	{include file="bitpackage:kernel/footer.tpl"}
{/if}

{/strip}