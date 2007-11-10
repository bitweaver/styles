{include file="bitpackage:kernel/header.tpl"}
{strip}
{if $print_page ne "y"}
	{if $gBitSystem->isFeatureActive( 'bidirectional_text' )}<div dir="rtl">{/if}

	<div id="bitbar">
	
		Welcome to {$gBitSystem->getConfig('site_title')|default:"bitweaver"}
	
	</div>

	<div id="wrap1">

		{if $gBitSystem->isFeatureActive( 'site_top_column' ) && $t_modules && !$gHideModules}
			{section name=homeix loop=$t_modules}
				{$t_modules[homeix].data}
			{/section}
		{/if}

		<div id="wrap2"><div id="wrap3"><div id="wrap4"><div id="wrap5">
			<div id="bitbody">
				{if $gBitSystem->isFeatureActive( 'site_left_column' ) && $l_modules && !$gHideModules}
					<div id="bitleft">
						<div class="bitleft-tl"></div>
						<div class="bitleft-tr"></div>
						<div class="bitleft-r">
						{section name=homeix loop=$l_modules}
							{$l_modules[homeix].data}
						{/section}</div>
					</div><!-- end #bitleft -->
				{/if}

				{if $gBitSystem->isFeatureActive( 'site_right_column' ) && $r_modules && !$gHideModules}
					<div id="bitright">
						{section name=homeix loop=$r_modules}
							{$r_modules[homeix].data}
						{/section}
					</div><!-- end #bitright -->
				{/if}

				<div id="bitmain" class="bit-cols-{if $gBitSystem->isFeatureActive( 'site_left_column' ) && $l_modules && !$gHideModules and $gBitSystem->isFeatureActive( 'site_right_column' ) && $r_modules && !$gHideModules}3{elseif $gBitSystem->isFeatureActive( 'site_left_column' ) && $l_modules && !$gHideModules}2l{elseif $gBitSystem->isFeatureActive( 'site_right_column' ) && $r_modules && !$gHideModules}2r{else}1{/if}">
					{include file="bitpackage:liberty/display_structure.tpl"}
					<a style="padding:0;margin:0;border:0;" name="content"></a>
					{if $pageError}
						<div class="error">{$pageError}</div>
					{/if}
					{include file=$mid}
				</div><!-- end #bitmain -->

				<div class="clear"></div>
			</div><!-- end #bitbody -->
		</div></div></div></div><!-- end #wrap2,3,4,5 -->

        <div id="footer">
            {if $gBitSystem->isFeatureActive( 'site_bottom_column' ) && $b_modules && !$gHideModules}
                {section name=homeix loop=$b_modules}
                    {$b_modules[homeix].data}
                {/section}
            {/if}
        </div><!-- end #footer -->
	</div><!-- end #wrap1 -->

	{if $gBitSystem->isFeatureActive( 'bidirectional_text' )} </div> {/if}

{/if}
{/strip}
{include file="bitpackage:kernel/footer.tpl"}
