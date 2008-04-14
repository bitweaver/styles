{include file="bitpackage:kernel/header.tpl"}
{strip}
{if $print_page ne "y"}
	{if $gBitSystem->isFeatureActive( 'bidirectional_text' )}<div dir="rtl">{/if}

	{capture name=lynxigation}
		<ul>
			<li><a href="#content">{tr}Page content{/tr}</a></li>
			<li><a href="#navigation">{tr}Page navigation{/tr}</a></li>
			<li><a href="#extra">{tr}Page extras{/tr}</a></li>
		</ul>
	{/capture}

	{include file="bitpackage:kernel/top.tpl"}

	{$smarty.capture.lynxigation}
	<div id="content">
		{include file="bitpackage:liberty/display_structure.tpl"}
		{if $pageError}<div class="error">{$pageError}</div>{/if}
		{include file=$mid}
	</div><!-- end #content -->{* needed by output filters. *}

	<div id="header">
		{if $gBitSystem->isFeatureActive( 'site_top_column' ) && $t_modules && !$gHideModules}
			{section name=homeix loop=$t_modules}
				{if $t_modules[homeix].module_rsrc != "bitpackage:kernel/mod_site_title.tpl"}
					{$t_modules[homeix].data}
				{/if}
			{/section}
		{/if}
	</div><!-- end #header -->{* needed by output filters. *}

	{$smarty.capture.lynxigation}
	{if $gBitSystem->isFeatureActive( 'site_left_column' ) && $l_modules && !$gHideModules}
		<div id="navigation">
			{include file="bitpackage:kernel/bit_left.tpl"}
		</div><!-- end #navigation -->{* needed by output filters. *}
	{/if}

	{$smarty.capture.lynxigation}
	{if $gBitSystem->isFeatureActive( 'site_right_column' ) && $r_modules && !$gHideModules}
		<div id="extra">
			{include file="bitpackage:kernel/bit_right.tpl"}
		</div><!-- end #extra -->{* needed by output filters. *}
	{/if}

	{$smarty.capture.lynxigation}
	<div id="footer">
		{if $gBitSystem->isFeatureActive( 'site_bottom_column' ) && $b_modules && !$gHideModules}
			{section name=homeix loop=$b_modules}
				{$b_modules[homeix].data}
			{/section}
		{/if}
	</div><!-- end #footer -->{* needed by output filters. *}

	{if $gBitSystem->isFeatureActive( 'bidirectional_text' )}</div>{/if}
{/if}
{/strip}
{include file="bitpackage:kernel/footer.tpl"}
