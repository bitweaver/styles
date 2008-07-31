{* $Header: /cvsroot/bitweaver/_bit_styles/studebaker/users/mod_login_box.tpl,v 1.6 2008/07/31 17:54:09 bitweaver Exp $ *}
{strip}
	{if $gBitUser->IsRegistered()}
		{assign var='nameTitle' value=$gBitUser->mInfo.login}
		{bitmodule notra=1 title="Welcome $nameTitle" name="login_box"}
			<ul>
				<li><a href="{$smarty.const.USERS_PKG_URL}my.php">{biticon iname="go-home" iexplain="My bitweaver"} {tr}My bitweaver{/tr}</a></li>
				<li><a href="{$smarty.const.WIKI_PKG_URL}edit.php">{biticon iname="document-new" iexplain="Create New Documentation"} {tr}Create New Documentation{/tr}</a></li>
				<li><a href="{$smarty.const.BLOGS_PKG_URL}post.php">{biticon iname="mail-message-new" iexplain="Write Blog Post"} {tr}Write Blog Post{/tr}</a></li>
				{if $gBitUser->isAdmin()}
					<li><a href="{$smarty.const.KERNEL_PKG_URL}admin/">{biticon iname="preferences-system" iexplain="Administration"} {tr}Administration{/tr}</a></li>
				{/if}
				<li><a href="{$smarty.const.USERS_PKG_URL}logout.php">{biticon iname="system-log-out" iexplain="Logout"} {tr}Logout{/tr}</a></li>
			</ul>
		{/bitmodule}
	{else}
		{bitmodule title="$moduleTitle" name="login_box"}
		{assign var=force_secure value=$gBitSystem->isFeatureActive("site_https_login_required")}
		{form ipackage=users ifile='validate.php' secure=$force_secure}
			<div class="row">
				Name:<br />
				<input type="text" name="user" id="user" size="15" />
			</div>

			<div class="row">
				Password:<br />
				<input type="password" name="pass" id="pass" size="15" />
			</div>

			{if $gBitSystem->isFeatureActive('users_remember_me')}
				<div class="row">
					<label><input type="checkbox" name="rme" id="rme" value="on" checked="checked" /> {tr}Remember me{/tr}</label>
				</div>
			{/if}

			{if $gBitSystem->getConfig('http_login_url') or $gBitSystem->getConfig('https_login_url')}
				<div class="row">
					<a href="{$gBitSystem->getConfig('http_login_url')}" title="{tr}Click here to login using the default security protocol{/tr}">{tr}standard{/tr}</a> |
					<a href="{$gBitSystem->getConfig('https_login_url')}" title="{tr}Click here to login using a secure protocol{/tr}">{tr}secure{/tr}</a>
				</div>
			{/if}

			{if $gBitSystem->isFeatureActive('show_stay_in_ssl_mode')}
				<div class="row">
					<label>{tr}Stay in ssl mode{/tr} <input type="checkbox" name="stay_in_ssl_mode" id="stay_in_ssl_mode" {if $gBitSystem->isFeatureActive('stay_in_ssl_mode')}checked="checked"{/if} /></label>
				</div>
			{else}
				<input type="hidden" name="stay_in_ssl_mode" value="{$gBitSystem->getConfig('stay_in_ssl_mode')|escape}" />
			{/if}

			<div class="row submit">
				<input type="submit" name="login" value="{tr}Log in{/tr}" />
			</div>

			{if $gBitSystem->isFeatureActive('users_allow_register')}
				<div class="login">
					<a href="{$smarty.const.USERS_PKG_URL}register.php">{tr}Register{/tr} &raquo;</a>
				</div>
			{/if}
		{/form}
		{/bitmodule}
	{/if}
{/strip}
