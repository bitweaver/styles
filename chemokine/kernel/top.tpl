{strip}
<div id="bittop">
	{if $gBitSystem->isFeatureActive( 'feature_top_bar' )}
		{include file="bitpackage:kernel/top_bar.tpl"}
	{/if}

	<div class="login">
		{if $gBitUser->isRegistered()}
			{displayname hash=$gBitUser->mInfo}
			&nbsp;- <a href="{$smarty.const.USERS_PKG_URL}logout.php">{tr}logout{/tr}</a>
		{else}
			<a href="{$smarty.const.USERS_PKG_URL}login.php">{tr}login{/tr}</a>
			{if $gBitSystem->isFeatureActive( 'allowRegister' )}
				&nbsp;- <a href="{$smarty.const.USERS_PKG_URL}register.php">{tr}register{/tr}</a> 
			{/if}
		{/if}
	</div>

	<h1>{$siteTitle}</h1>
	<h3>{$site_slogan}</h3>
</div>
{/strip}
