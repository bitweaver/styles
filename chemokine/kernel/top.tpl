{strip}
<div id="bittop">
	{if $gBitSystem->isFeatureActive( 'site_top_bar' )}
		{include file="bitpackage:kernel/top_bar.tpl"}
	{/if}

	<div class="login">
		<!-- nohighlight -->
		{if $gBitUser->isRegistered()}
			{displayname hash=$gBitUser->mInfo}
			&nbsp;- <a href="{$smarty.const.USERS_PKG_URL}logout.php">{tr}logout{/tr}</a>
		<!-- /nohighlight -->
		{else}
		<!-- nohighlight -->
			<a href="{$smarty.const.USERS_PKG_URL}login.php">{tr}login{/tr}</a>
			{if $gBitSystem->isFeatureActive( 'users_allow_register' )}
				&nbsp;- <a href="{$smarty.const.USERS_PKG_URL}register.php">{tr}register{/tr}</a> 
			{/if}
		{/if}
		<!-- /nohighlight -->
	</div>
	
	<!-- nohighlight -->
	<h1>{$gBitSystem->getConfig('site_title')}</h1>
	<h3>{$gBitSystem->getConfig('site_slogan')}</h3>
	<!-- /nohighlight -->
</div>
{/strip}
