{include file="bitpackage:kernel/header.tpl"}

{if $print_page ne "y"}

{if $gBitSystem->isFeatureActive( 'feature_bidi' )}
	<div dir="rtl">
{/if}

{if $gBitSystem->isFeatureActive( 'feature_top_bar' )}
	{include file="bitpackage:kernel/top_bar.tpl"}
{/if}

<div id="bittop">
	<div class="toplogin">
		{if $gBitUser->isRegistered()}
			{tr}logged in as{/tr} {displayname}
			<div class="spacer"></div>
			<a href="{$gBitLoc.USERS_PKG_URL}logout.php">{tr}logout{/tr}</a>
		{else}
			{form ipackage="users" ifile="validate.php"}
				<div>
					<input type="text" name="user" alt="user name" size="10" value="username" onfocus="this.value=''" />
					<input type="password" name="pass" alt="password" size="10" value="password" onfocus="this.value=''" />
					<input type="image" src="{$gBitLoc.THEMES_PKG_URL}styles/native/images/login.gif" style="border:0;" name="login" value="{tr}login{/tr}" />
					{if $rememberme ne 'disabled'}
						<input type="hidden" name="rme" id="rme" value="on" />
					{/if}
					{if $gBitSystem->isFeatureActive( 'allowRegister' )}
						<div class="spacer"></div>
						<a href="{$gBitLoc.USERS_PKG_URL}register.php">{tr}register{/tr}</a>
					{/if}
				</div>
			{/form}
		{/if}
	</div>
	<h1>{$siteTitle|default:"Your Site"}</h1>
</div>

{if ( $gBitSystem->isFeatureActive( 'feature_left_column' ) && $l_modules && !$gHideModules ) or ( $gBitSystem->isFeatureActive( 'feature_right_column' ) && $r_modules && !$gHideModules ) }
	<div id="bitmodules">
		{section name=homeix loop=$l_modules}
		{$l_modules[homeix].data}
		{/section}
		{section name=homeix loop=$r_modules}
		{$r_modules[homeix].data}
		{/section}
	</div>
{/if}

<div id="tikimain">
	{include file="bitpackage:liberty/display_structure.tpl"}

	{if $pageError}
	<div class="error">{$pageError}</div>
	{/if}

	{include file=$mid}
</div>

{if $gBitSystem->isFeatureActive( 'feature_bot_bar' )}
	<div id="tikibottom">
		{include file="bitpackage:kernel/bot_bar.tpl"}
	</div>
{/if}

{if $gBitSystem->isFeatureActive( 'feature_bidi' )}
	</div>
{/if}

{include file="bitpackage:kernel/footer.tpl"}

{/if}
