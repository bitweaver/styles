{include file="bitpackage:kernel/header.tpl"}
{strip}
{if $print_page ne "y"}
	{if $gBitSystem->isFeatureActive( 'site_top_bar' )}
		{include file="bitpackage:kernel/top_bar.tpl"}
	{/if}

	<div id="bitholder" class="bit-holder-{
			if $gBitSystem->isFeatureActive( 'site_right_column' ) 
				&& $r_modules 
				&& !$gHideModules}{
			if $gBitSystem->isFeatureActive( 'site_left_column' ) 
				&& $l_modules 
				&& !$gHideModules}2{else}1r{/if}{
			elseif $gBitSystem->isFeatureActive( 'site_left_column' ) 
				&& $l_modules 
				&& !$gHideModules}1l{else}0{/if}">

		{if $gBitSystem->isFeatureActive( 'bidirectional_text' )}
			<div dir="rtl">
		{/if}

		{include file="bitpackage:kernel/top.tpl"}

		{if $gBitSystem->isFeatureActive( 'site_top_column' ) && $t_modules && !$gHideModules}
			{section name=homeix loop=$t_modules}
				{$t_modules[homeix].data}
			{/section}
		{/if}

		<div id="bitbody">
			<div id="bitmain" class="bit-cols">
				{include file="bitpackage:liberty/display_structure.tpl"}
				<a style="padding:0;margin:0;border:0;" name="content"></a>
				{if $pageError}
					<div class="error">{$pageError}</div>
				{/if}
				{include file=$mid}
				<div class="clear"></div>
			</div><!-- end #bitmain -->

			{if $gBitSystem->isFeatureActive( 'site_left_column' ) && $l_modules && !$gHideModules}
				<div id="bitleft">
					{section name=homeix loop=$l_modules}
						{$l_modules[homeix].data}
					{/section}
				</div><!-- end #bitleft -->
			{/if}

			{if $gBitSystem->isFeatureActive( 'site_right_column' ) && $r_modules && !$gHideModules}
				<div id="bitright">
					{section name=homeix loop=$r_modules}
						{$r_modules[homeix].data}
					{/section}
				</div><!-- end #bitright -->
			{/if}

			<div id="bitbottom" class="bit-cols-{if $gBitSystem->isFeatureActive( 'site_right_column' ) && $r_modules && !$gHideModules}2{else}1{/if}">
				{if $gBitSystem->isFeatureActive( 'site_bot_bar' )}
					{include file="bitpackage:kernel/bot_bar.tpl"}
				{/if}
			</div><!-- end #bitbottom -->
		</div><!-- end #bitbody -->
		{if $gBitSystem->isFeatureActive( 'bidirectional_text' )}
			</div>
		{/if}
	</div><!-- end #bitholder -->
	{include file="bitpackage:kernel/footer.tpl"}
{/if}
{/strip}
