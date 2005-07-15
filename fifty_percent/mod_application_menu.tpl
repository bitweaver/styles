{* $Header: /cvsroot/bitweaver/_bit_styles/fifty_percent/mod_application_menu.tpl,v 1.1.1.1.2.2 2005/07/15 12:01:21 squareing Exp $ *}
{strip}

{bitmodule title="$moduleTitle" name="application_menu"}

{foreach key=key item=menu from=$appMenu}
{if $menu.template}
<div class="menu {$key}menu">
	{if $menu.title}
		{if $gBitSystem->isFeatureActive( 'feature_menusfolderstyle' )}
			<a class="head" href="javascript:icntoggle('{$key}menu');">{biticon ipackage=liberty iname="collapsed" id="`$key`menuimg" iexplain="folder"}
		{else}
			<a class="head" href="javascript:toggle('{$key}menu');">
		{/if}
		{tr}{$menu.title}{/tr}</a>
		{if $gBitSystem->isFeatureActive( 'feature_menusfolderstyle' )}
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
{if $gBitSystem->isFeatureActive( 'feature_usermenu' )and $usr_user_menus}
<div class="menu usrmenu">
	{if $gBitSystem->isFeatureActive( 'feature_menusfolderstyle' )}
		<a class="head" href="javascript:icntoggle('usrmenu');">{biticon ipackage=liberty iname="collapsed" id="usrmenu" iexplain="folder"}
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
