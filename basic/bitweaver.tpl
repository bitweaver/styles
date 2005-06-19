{include file="bitpackage:kernel/header.tpl"}
{if $print_page ne "y"}
{if $gBitSystemPrefs.feature_bidi eq 'y'}
<table dir="rtl"><tr><td>
{/if}

<div id="tikibody">

{include file="bitpackage:kernel/top.tpl"}

{if $gBitSystemPrefs.feature_top_bar eq 'y'}
    {include file="bitpackage:kernel/top_bar.tpl"}
{/if}

<table id="tikilayouttable" cellspacing="0" cellpadding="0" border="0">
<tr>
{if $gBitSystemPrefs.feature_left_column eq 'y' && $l_modules && !$gHideModules}
  <td id="bitleft">
    {section name=homeix loop=$l_modules}
      {$l_modules[homeix].data}
    {/section}
  </td> <!-- end #bitleft -->
{/if}
  <td id="tikimain">
    <div id="tikimainfx">
{if $pageError}
<div class="error">{$pageError}</div>
{/if}
      {include file=$mid}
    </div> <!-- end #tikimainfx -->
  </td> <!-- end #tikimain -->
{if $gBitSystemPrefs.feature_right_column eq 'y' && $r_modules && !$gHideModules}
  <td id="bitright">
    {section name=homeix loop=$r_modules}
      {$r_modules[homeix].data}
    {/section}
  </td> <!-- end #bitright -->
{/if}
</tr>
</table>

{if $gBitSystemPrefs.feature_bot_bar eq 'y'}
  <div id="tikibottom">
    {include file="bitpackage:kernel/bot_bar.tpl"}
  </div> <!-- end #tikibottom -->
{/if}

</div> <!-- end #tikibody -->

{if $gBitSystemPrefs.feature_bidi eq 'y'}
</td></tr></table>
{/if}
{include file="bitpackage:kernel/footer.tpl"}
{/if}
