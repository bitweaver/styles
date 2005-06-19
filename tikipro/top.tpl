<div id="bittop">
<div style="text-align:right;">
{if $gBitSystemPrefs.feature_calendar eq 'y' and $gBitUser->hasPermission( 'bit_p_view_calendar' )}
	<a href="{$gBitLoc.CALENDAR_PKG_URL}index.php">{$smarty.now|bit_short_datetime}</a>
{else}
	{$smarty.now|bit_short_datetime}
{/if}
{if $gBitUser->isAdmin() and $gBitSystemPrefs.feature_debug_console eq 'y'}
	&#160;//&#160;<a title="{tr}View Debugger{/tr}" href="javascript:toggle('debugconsole');">{tr}Debugger{/tr}</a>
{/if}
<br />
{if $gBitUser->isRegistered()}
	{tr}Welcome{/tr} <b><a href="{$gBitLoc.USERS_PKG_URL}my.php">{displayname hash=$gBitUser->mInfo}</a></b> | <a href="{$gBitLoc.USERS_PKG_URL}logout.php">{tr}logout{/tr}</a>
{else}
	<a href="{$gBitLoc.USERS_PKG_URL}login.php">{tr}login{/tr}</a>{if $allowRegister eq 'y'} | <a href="{$gBitLoc.USERS_PKG_URL}register.php">{tr}register{/tr}</a>{/if}
{/if}
</div>
</div>
