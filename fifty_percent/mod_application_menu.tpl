{* $Header$ *}
{strip}

{bitmodule title="$moduleTitle" name="application_menu"}

{foreach key=key item=menu from=$appMenu}
{if $menu.template}
<div class="menu {$key}menu">
	{if $menu.title}
		{if $gBitSystem->isFeatureActive( 'site_menu_flip_icon' )}
			<a class="head" href="javascript:icntoggle('{$key}menu');">{biticon ipackage="icons" iname="list-add" id="`$key`menuimg" iexplain="folder"}
		{else}
			<a class="head" href="javascript:toggle('{$key}menu');">
		{/if}
		{tr}{$menu.title}{/tr}</a>
		{if $gBitSystem->isFeatureActive( 'site_menu_flip_icon' )}
			<script type="text/javascript">
				setfoldericonstate('{$key}menu');
			</script>
		{/if}
	{/if}
	<div id="{$key}menu" style="{$menu.style}">
		{include file=$menu.template}
	</div>
</div>
{/if}
{/foreach}

{* =========================== User menu =========================== *}
{if $gBitSystem->isFeatureActive( 'usermenu' )and $usr_user_menus}
<div class="menu usrmenu">
	{if $gBitSystem->isFeatureActive( 'site_menu_flip_icon' )}
		<a class="head" href="javascript:icntoggle('usrmenu');">{biticon ipackage="icons" iname="list-add" id="usrmenu" iexplain="folder"}
	{else}
		<a class="head" href="javascript:toggle('usrmenu');">
	{/if}
	{tr}User Menu{/tr}</a>
	<div id="usrmenu" style="{$usrmenu.style}">
		{* Show user menu contents only if there is something to display *}
		{if count($usr_user_menus) gt 0}
			{section name=ix loop=$usr_user_menus}
				<li><a class="item" href="{$usr_user_menus[ix].url}">{$usr_user_menus[ix].name}</a></li>
			{/section}
		{/if}
	</div>
</div>
{/if}
{/bitmodule}

{/strip}
