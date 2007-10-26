{include file="bitpackage:kernel/header.tpl"}
{if $print_page ne "y"}
{if $gBitSystem->isFeatureActive( 'bidirectional_text' )}
<table dir="rtl"><tr><td>
{/if}

<div id="bitbody">

{include file="bitpackage:kernel/top.tpl"}

{if $gBitSystem->isFeatureActive( 'site_top_bar' )}
    {include file="bitpackage:kernel/top_bar.tpl"}
{/if}

{if $gBitSystem->isFeatureActive( 'site_top_column' ) && $t_modules && !$gHideModules}
	{section name=homeix loop=$t_modules}
		{$t_modules[homeix].data}
	{/section}
{/if}

<table id="bitlayouttable" cellspacing="0" cellpadding="0" border="0">
<tr>
{if $gBitSystem->isFeatureActive( 'site_left_column' ) && $l_modules && !$gHideModules}
  <td id="bitleft">
    {section name=homeix loop=$l_modules}
      {$l_modules[homeix].data}
    {/section}
  </td> <!-- end #bitleft -->
{/if}
  <td id="bitmain">
    <div id="bitmainfx">
	{include file="bitpackage:liberty/display_structure.tpl"}
	<a style="padding:0;margin:0;border:0;" name="content"></a>
{if $pageError}
<div class="error">{$pageError}</div>
{/if}
      {include file=$mid}
    </div> <!-- end #bitmainfx -->
  </td> <!-- end #bitmain -->
{if $gBitSystem->isFeatureActive( 'site_right_column' ) && $r_modules && !$gHideModules}
  <td id="bitright">
    {section name=homeix loop=$r_modules}
      {$r_modules[homeix].data}
    {/section}
  </td> <!-- end #bitright -->
{/if}
</tr>
</table>

{if $gBitSystem->isFeatureActive( 'site_bot_bar' )}
  <div id="bitbottom">
    {include file="bitpackage:kernel/bot_bar.tpl"}
  </div> <!-- end #bitbottom -->
{/if}

</div> <!-- end #bitbody -->

{if $gBitSystem->isFeatureActive( 'bidirectional_text' )}
</td></tr></table>
{/if}
{include file="bitpackage:kernel/footer.tpl"}
{/if}
