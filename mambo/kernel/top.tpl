{strip}
{if $gBitSystem->isFeatureActive( 'site_top_bar' )}
	{include file="bitpackage:kernel/top_bar.tpl"}
{/if}
<div id="bittop">

	{if !$gBitUser->isRegistered()}
		<a href="{$smarty.const.USERS_PKG_URL}login.php">{tr}login{/tr}</a>
	{else}
		{displayname} &bull; <a href="{$smarty.const.USERS_PKG_URL}logout.php">{tr}logout{/tr}</a>
	{/if}
	
</div>
{/strip}
