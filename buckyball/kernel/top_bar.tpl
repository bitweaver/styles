{strip}
{* this link is for textbrowsers *}
<div id="bittopbar">
	<a style="display:none;position:absolute;top=0px;left:0px;" href="#top">{tr}go to top{/tr}</a>
	<ul id="nav" class="menu hor">
		<li><a class="item" href="{$gBitLoc.BIT_ROOT_URL}">{tr}{$siteTitle|default:"Home"}{/tr}</a></li>
		{foreach key=key item=menu from=$appMenu}
			{if $menu.title && $menu.titleUrl && $menu.template}
				<li>
					<a class="{if $gBitSystem->isFeatureActive( 'feature_top_bar_dropdown' )}head{else}item{/if}{if $gBitLoc.ACTIVE_PACKAGE eq $menu.adminPanel} selected{/if}" href="{$menu.titleUrl}">{tr}{$menu.title}{/tr}</a>
					{if $gBitSystem->isFeatureActive( 'feature_top_bar_dropdown' )}
						{include file="`$menu.template`"}
					{/if}
				</li>
			{/if}
		{/foreach}
		{if $gBitUser->isAdmin()}
			<li>
				<a class="{if $gBitSystem->isFeatureActive( 'feature_top_bar_dropdown' )}head{else}item{/if}{if $gBitLoc.ACTIVE_PACKAGE eq 'kernel'} selected{/if}" href="{$gBitLoc.KERNEL_PKG_URL}admin/index.php">{tr}Administration{/tr}</a>
				{if $gBitSystem->isFeatureActive( 'feature_top_bar_dropdown' )}
					<ul>
						{foreach key=key item=menu from=$adminMenu}
							<li>
								<a class="head" href="{$gBitLoc.KERNEL_PKG_URL}admin/index.php">{tr}{$key|capitalize}{/tr}</a>
								{include file=`$menu.tpl`}
							</li>
						{/foreach}
						<li>
							<a class="head" href="{$gBitLoc.KERNEL_PKG_URL}admin/index.php">{tr}{tr}Layout and Design{/tr}{/tr}</a>
							{include file="bitpackage:kernel/menu_layout_admin.tpl"}
						</li>
					</ul>
				{/if}
			</li>
		{/if}
	</ul>
	<div class="clear"></div>
</div>
<a name="top"></a>
{/strip}
