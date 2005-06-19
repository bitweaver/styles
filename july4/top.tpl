<div id="bittop">
<table border="0" cellpadding="0" cellspacing="0" width="100%" height="58">
<tr>
	<td colspan="0" rowspan="0" bgcolor="#FFFFFF" height="58" width="180" style="vertical-align: bottom;background-image:url('{$gBitLoc.THEMES_PKG_URL}styles/july4/images/fade_flag-h.gif');background-repeat:no-repeat;background-position:right;"></td>
	<td bgcolor="#b40019" align="left" style="vertical-align: bottom;color: #ffffff;padding:3px;"><h1 style="vertical-align: bottom;color: #ffffff;">{$siteTitle|default:"bitweaver"}</h1>
			<h2 style="vertical-align: bottom;color: #ffffff;font-size:small;">{$gBitSystemPrefs.site_slogan}</h2>

	</td>
	<td bgcolor="#b40019" align="right" style="vertical-align: bottom;color: #ffffff;font: 10pt Zurich, Verdana, Arial, sans-serif;padding: 2px">
	{if $gBitUser->isRegistered()}
	{tr}Welcome{/tr} <b><a href="{$gBitLoc.USERS_PKG_URL}my.php" style="color:#white;">{displayname hash=$gBitUser->mInfo nolink=1}</a></b> | <b><a href="{$gBitLoc.USERS_PKG_URL}logout.php" style="color: #ffffff;">{tr}logout{/tr}</a></b>
{else}
	{tr}Please {/tr}<b><a href="{$gBitLoc.USERS_PKG_URL}login.php" style="color: #ffffff;">{tr}login{/tr}</a></b>{if $allowRegister eq 'y'} | <b><a href="{$gBitLoc.USERS_PKG_URL}register.php">{tr}register{/tr}</a></b>{/if}
{/if}
	<br/>{$smarty.now|bit_short_datetime}
	</td>
</tr>
</table>
</div>
