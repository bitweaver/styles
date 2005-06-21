{include file="bitpackage:kernel/header.tpl"}
{strip}
{if $print_page ne "y"}
	{if $gBitSystemPrefs.feature_bidi eq 'y'}
		<div dir="rtl">
	{/if}

	<div id="wrap1" class="pkg-{$gBitLoc.ACTIVE_PACKAGE|lower}">
		<div id="wrap2">
			{if $gBitSystemPrefs.feature_top_bar eq 'y'}
				{include file="bitpackage:kernel/top_bar.tpl"}
			{/if}

			{include file="bitpackage:kernel/top.tpl"}

			<div id="bitbody">
				{if $gBitSystemPrefs.feature_left_column eq 'y' && $l_modules && !$gHideModules}
					<div id="bitleft">
						{section name=homeix loop=$l_modules}
							{$l_modules[homeix].data}
						{/section}
					</div><!-- end #bitleft -->
				{/if}

				{if $gBitSystemPrefs.feature_right_column eq 'y' && $r_modules && !$gHideModules}
					<div id="bitright">
						{section name=homeix loop=$r_modules}
							{$r_modules[homeix].data}
						{/section}
					</div><!-- end #bitright -->
				{/if}

				<div id="bitmain" class="bit-cols-
					{if $gBitSystemPrefs.feature_right_column eq 'y' && $r_modules && !$gHideModules}
						2
					{else}
						1
					{/if}
				">
					{include file="bitpackage:liberty/display_structure.tpl"}
					{if $pageError}
						<div class="error">{$pageError}</div>
					{/if}
					{include file=$mid}
				</div><!-- end #bitmain -->

				<div id="bitbottom">
					{if $gBitSystemPrefs.feature_bot_bar eq 'y'}
						{include file="bitpackage:kernel/bot_bar.tpl"}
					{/if}
				</div><!-- end #bitbottom -->
			</div><!-- end #bitbody -->
		</div><!-- end #wrap2 -->
	</div><!-- end #wrap1 -->
	{if $gBitSystemPrefs.feature_bidi eq 'y'}
		</div>
	{/if}
	{include file="bitpackage:kernel/footer.tpl"}
{/if}
{/strip}

