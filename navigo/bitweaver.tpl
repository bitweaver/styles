{include file="bitpackage:kernel/header.tpl"}
{if $print_page ne "y"}
{if $gBitSystemPrefs.feature_bidi eq 'y'}
<table dir="rtl"><tr><td>
{/if}

<div id="tikibody">

{if $gBitSystemPrefs.feature_top_bar eq 'y'}
<table id="bittopbar" cellspacing="0" cellpadding="0" border="0">
  <tr>
  	<td id="tikilogo">bitweaver</td>
    <td>{include file="bitpackage:kernel/top_bar.tpl"}</td>
    <td style="text-align: right; padding: 0 2px;">
      {if !$user}
        <a class="menuhead" href="{$gBitLoc.USERS_PKG_URL}login.php">{tr}login{/tr}</a>
      {else}
        <a class="menuhead" href="{$gBitLoc.USERS_PKG_URL}logout.php">{tr}logout{/tr}</a>
      {/if}
    </td>
  </tr>
</table>
{/if}
<table id="tikilayouttable" cellspacing="0" cellpadding="0" border="0">
<tr>
{if $gBitSystemPrefs.feature_left_column eq 'y' && $l_modules}
  <td id="bitleft">
    {section name=homeix loop=$l_modules}
      {$l_modules[homeix].data}
    {/section}
  </td> <!-- end #bitleft -->
{/if}
  <td style="vertical-align: top;">
<table cellpadding="0" cellspacing="0" border="0" style="border-top: 0px solid #4f6e8c">
  <tr>
    <td id="tikimain" height="1">
      <div id="tikimainfx">
		{include file="bitpackage:liberty/display_structure.tpl"}
        {include file=$mid}
      </div> <!-- end #tikimainfx -->
    </td> <!-- end #tikimain -->
  </tr>
  {if $gBitSystemPrefs.feature_bot_bar eq 'y'}
  <tr>
    <td id="tikibottom">{include file="bitpackage:kernel/bot_bar.tpl"}</td>
  </tr>
  {/if}
</table>
</td>
{if $gBitSystemPrefs.feature_right_column eq 'y' && $r_modules}
  <td id="bitright">
    {section name=homeix loop=$r_modules}
      {$r_modules[homeix].data}
    {/section}
  </td> <!-- end #bitright -->
{/if}
</tr>
</table>

</div> <!-- end #tikibody -->

{if $gBitSystemPrefs.feature_bidi eq 'y'}
</td></tr></table>
{/if}
{include file="bitpackage:kernel/footer.tpl"}
{/if}