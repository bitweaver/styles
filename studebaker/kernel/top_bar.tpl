{strip}
<div id="bittopbar">
	<ul id="nav" class="menu hor">
		<li class="m-home">
			<a class="head" accesskey="h" href="{$smarty.const.BIT_ROOT_URL}">{$gBitSystem->getConfig('site_menu_title')|default:$gBitSystem->getConfig('site_title')}</a>
			{include file="bitpackage:kernel/menu_global.tpl"}
		</li>

		{if $gBitUser->isAdmin()}
			<li class="m-admin{if $smarty.const.ACTIVE_PACKAGE eq 'kernel'} current{/if}">
				<a accesskey="A" class="{if $gBitSystem->isFeatureActive( 'site_top_bar_dropdown' )}head{else}item{/if}{if $smarty.const.ACTIVE_PACKAGE eq 'kernel'} selected{/if}" href="{$smarty.const.KERNEL_PKG_URL}admin/index.php">
					<strong>{tr}Administration{/tr}</strong>
				</a>
				{if $gBitSystem->isFeatureActive( 'site_top_bar_dropdown' )}
					<ul>
						{foreach key=key item=menu from=$adminMenu}
							{if $key eq 'kernel' or $key eq 'liberty' or $key eq 'languages' or $key eq 'users' or $key eq 'themes'}
								<li>
									<a class="head" style="cursor:default" href="{$smarty.const.KERNEL_PKG_URL}admin/index.php">
										<strong>{tr}{$key|capitalize}{/tr}</strong>
									</a>
									{include file=`$menu.tpl`}
								</li>
							{/if}
						{/foreach}
						{foreach key=key item=menu from=$adminMenu}
							{if $key neq 'kernel' and $key neq 'liberty' and $key neq 'languages' and $key neq 'users' and $key neq 'themes'}
								<li>
									<a class="head" style="cursor:default" href="{$smarty.const.KERNEL_PKG_URL}admin/index.php">
										{tr}{$key|capitalize}{/tr}
									</a>
									{include file=`$menu.tpl`}
								</li>
							{/if}
						{/foreach}
					</ul>
				{/if}
			</li>
		{/if}
		
		{foreach key=key item=menu from=$gBitSystem->mAppMenu}
			{if $menu.menu_title && $menu.index_url && $menu.menu_template && !$menu.is_disabled}
				<li class="m-{$key}{if $smarty.const.ACTIVE_PACKAGE eq $menu.active_package} current{/if}">
					<a accesskey="{$key|truncate:1:""}" class="{if $gBitSystem->isFeatureActive( 'site_top_bar_dropdown' )}head{else}item{/if}{if $smarty.const.ACTIVE_PACKAGE eq $menu.package_name} selected{/if}" href="{$menu.index_url}">{tr}{$menu.menu_title}{/tr}</a>
					{if $gBitSystem->isFeatureActive( 'site_top_bar_dropdown' )}
						{include file="`$menu.menu_template`"}
					{/if}
				</li>
			{/if}
		{/foreach}
	</ul>
	<div class="clear"></div>
</div>

{if $gBitSystem->isFeatureActive('site_top_bar_js') && $gBitSystem->isFeatureActive('site_top_bar_dropdown')}
	<script type="text/javascript"> /*<![CDATA[*/
		var listMenu = new FSMenu('listMenu', true, 'left', 'auto', '-999');
		{if $gBitSystem->isFeatureActive( 'site_top_bar_js_fade' )}
			listMenu.animations[listMenu.animations.length] = FSMenu.animFade;
		{/if}
		{if $gBitSystem->isFeatureActive( 'site_top_bar_js_swipe' )}
			listMenu.animations[listMenu.animations.length] = FSMenu.animSwipeDown;
		{/if}
		{if $gBitSystem->isFeatureActive( 'site_top_bar_js_clip' )}
			listMenu.animations[listMenu.animations.length] = FSMenu.animClipDown;
		{/if}
		addEvent(window, 'load', new Function('listMenu.activateMenu("nav")'));
	/*]]>*/ </script>
{/if}

{if $gBitSystem->isFeatureActive( 'site_top_column' ) && $t_modules && !$gHideModules}
	{section name=homeix loop=$t_modules}
		{$t_modules[homeix].data}
	{/section}
{/if}
{/strip}

<div id="bittop">
	{*
	<div id="bitlogin">
		{if $gBitUser->isRegistered()}
			{tr}Welcome{/tr}, <strong>{displayname hash=$gBitUser->mInfo}</strong>
			<a href="{$smarty.const.USERS_PKG_URL}logout.php">{tr}logout{/tr}</a>
		{else}
			<a href="{$smarty.const.USERS_PKG_URL}login.php">{tr}login{/tr}</a>
			{if $gBitSystem->isFeatureActive( 'users_allow_register' )}
				| <a href="{$smarty.const.USERS_PKG_URL}register.php">{tr}register{/tr}</a> 
			{/if}
		{/if}

		<br />

		{if $gBitSystem->isFeatureActive( 'feature_calendar' ) and $gBitUser->hasPermission( 'p_calendar_view' )}
			<a href="{$smarty.const.CALENDAR_PKG_URL}index.php">{$smarty.now|bit_short_datetime}</a>
		{else}
			{$smarty.now|bit_short_datetime}
		{/if}
	</div>
	<h1><a href="{$smarty.const.BIT_ROOT_URL}">{$gBitSystem->getConfig('site_title')}</a></h1>
	<h3>{$gBitSystem->getConfig('site_slogan')}</h3>
	*}
	<ul class="bitmenu">
		<li class="left"><!-- --></li>
		<li><a class="parent" href="">Downloads</a>
			<ul>
				<li><a href="">Dogs</a></li>
				<li><a href="">Cats</a></li>
				<li><a href="">Horses</a></li>
				<li><a href="">Cows</a></li>
			</ul>
		</li>
		<li><a class="parent" href="">Docs</a>
			<ul>
				<li><a href="">Green</a></li>
				<li><a href="">Blue</a></li>
				<li><a href="">Pink</a></li>
			</ul>
		</li>
		<li class="logo"><a href=""></a>
			<ul>
				<li><a href="">Green</a></li>
				<li><a href="">Pink</a></li>
			</ul>
		</li>
		<li><a class="parent" href="">Demo</a>
		</li>
		<li><a class="parent" href="">Community</a>
			<ul>
				<li><a href="">Plank</a></li>
				<li><a href="">Prank</a></li>
				<li><a href="">Crank</a></li>
			</ul>
		</li>
		<li class="right"><!-- --></li>
	</ul>
</div>
