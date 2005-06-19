<div id="bittop">
{if !$user}
	<a href="{$gBitLoc.USERS_PKG_URL}login.php">{tr}login{/tr}</a>
{else}
	{tr}hi{/tr} {$user}, <a href="{$gBitLoc.USERS_PKG_URL}logout.php">{tr}logout{/tr}</a>
{/if}
</div>
