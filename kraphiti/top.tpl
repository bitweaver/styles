<div id="bittop">
{if !$user}
	<a href="{$smarty.const.USERS_PKG_URL}login.php">{tr}login{/tr}</a>
{else}
	<a href="{$smarty.const.USERS_PKG_URL}logout.php">{tr}logout{/tr}</a>
{/if}
</div>
