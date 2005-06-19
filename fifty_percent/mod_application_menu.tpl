{* $Header: /cvsroot/bitweaver/_bit_styles/fifty_percent/mod_application_menu.tpl,v 1.1 2005/06/19 06:11:16 bitweaver Exp $ *}
{strip}

{bitmodule title="$moduleTitle" name="application_menu"}

{foreach key=key item=menu from=$appMenu}
{if $menu.template}
<div class="menu {$key}menu">
	{if $menu.title}
		{if $gBitSystemPrefs.feature_menusfolderstyle eq 'y'}
			<a class="head" href="javascript:icntoggle('{$key}menu');">{biticon ipackage=liberty iname="folder" id="`$key`menuimg" iexplain="folder"}
		{else}
			<a class="head" href="javascript:toggle('{$key}menu');">
		{/if}
		{tr}{$menu.title}{/tr}</a>
		{if $gBitSystemPrefs.feature_menusfolderstyle eq 'y'}
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
{if $gBitSystemPrefs.feature_usermenu eq 'y'and $usr_user_menus}
<div class="menu usrmenu">
	{if $gBitSystemPrefs.feature_menusfolderstyle eq 'y'}
		<a class="head" href="javascript:icntoggle('usrmenu');">{biticon ipackage=liberty iname="folder" id="usrmenu" iexplain="folder"}
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
