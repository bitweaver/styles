{include file="bitpackage:kernel/header.tpl"}

{if $print_page ne "y"}

{if $gBitSystem->isFeatureActive( 'bidirectional_text' )}
	<div dir="rtl">
{/if}

{if $gBitSystem->isFeatureActive( 'site_top_bar' )}
	{include file="bitpackage:kernel/top_bar.tpl"}
{/if}

<div id="bittop">
<!-- nohighlight -->
	<div class="toplogin">
		{if $gBitUser->isRegistered()}
			{tr}logged in as{/tr} {displayname}
			<div class="spacer"></div>
			<a href="{$smarty.const.USERS_PKG_URL}logout.php">{tr}logout{/tr}</a>
		{else}
			{assign var=force_secure value=$gBitSystem->isFeatureActive("site_https_login_required")}
			{form ipackage="users" ifile="validate.php" secure=$force_secure}
				<div>
					<input type="text" name="user" alt="user name" size="10" value="username" onfocus="this.value=''" />
					<input type="password" name="pass" alt="password" size="10" value="password" onfocus="this.value=''" />
					<input type="image" src="{$smarty.const.THEMES_PKG_URL}styles/native/images/login.gif" style="border:0;" name="login" value="{tr}login{/tr}" />
					{if $gBitSystem->getConfig('users_remember_me') ne 'disabled'}
						<input type="hidden" name="rme" id="rme" value="on" />
					{/if}
					{if $gBitSystem->isFeatureActive( 'users_allow_register' )}
						<div class="spacer"></div>
						<a href="{$smarty.const.USERS_PKG_URL}register.php">{tr}register{/tr}</a>
					{/if}
				</div>
			{/form}
		{/if}
	</div>
	<h1>{$gBitSystem->getConfig('site_title')|default:"Your Site"}</h1>
<!-- nohighlight -->
</div>

{if ( $gBitSystem->isFeatureActive( 'site_left_column' ) && $l_modules && !$gHideModules ) or ( $gBitSystem->isFeatureActive( 'site_right_column' ) && $r_modules && !$gHideModules ) }
	<div id="bitmodules">
		{section name=homeix loop=$l_modules}
		{$l_modules[homeix].data}
		{/section}
		{section name=homeix loop=$r_modules}
		{$r_modules[homeix].data}
		{/section}
	</div>
{/if}

<div id="bitmain">
	{include file="bitpackage:liberty/display_structure.tpl"}

	<a style="padding:0;margin:0;border:0;" name="content"></a>
	{if $pageError}
	<div class="error">{$pageError}</div>
	{/if}

	{include file=$mid}
</div>

{if $gBitSystem->isFeatureActive( 'site_bot_bar' )}
	<div id="bitbottom">
		{include file="bitpackage:kernel/bot_bar.tpl"}
	</div>
{/if}

{if $gBitSystem->isFeatureActive( 'bidirectional_text' )}
	</div>
{/if}

{include file="bitpackage:kernel/footer.tpl"}

{/if}
