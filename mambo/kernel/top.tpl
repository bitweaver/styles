{strip}
{if $gBitSystem->isFeatureActive( 'feature_top_bar' )}
	{include file="bitpackage:kernel/top_bar.tpl"}
{/if}
<div id="bittop">
	{if !$gBitUser->isRegistered()}
		<a href="{$gBitLoc.USERS_PKG_URL}login.php">{tr}login{/tr}</a>
	{/if}
</div>
{/strip}
